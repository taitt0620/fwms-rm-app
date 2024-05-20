import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/features/qr-scan/bloc/qr_scan_bloc.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/analyze_image_from_gallery_button.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/scanner_error_widget.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/start_stop_mobile_scanner_button.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/switch_camera_button.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/toggle_flashlight_button.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScanScreen extends StatefulWidget {
  const QrScanScreen({super.key});

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen>
    with WidgetsBindingObserver {
  final MobileScannerController controller = MobileScannerController(
    formats: const [BarcodeFormat.qrCode],
    autoStart: false,
    torchEnabled: false,
    useNewCameraSelector: true,
  );

  Barcode? _barcode;
  StreamSubscription<Object?>? _subscription;

  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'Scan something!',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    }

    return Text(
      value.displayValue ?? 'No display value.',
      overflow: TextOverflow.fade,
      style: const TextStyle(color: Colors.white),
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _subscription = controller.barcodes.listen(_handleBarcode);

    unawaited(controller.start());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!controller.value.isInitialized) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        _subscription = controller.barcodes.listen(_handleBarcode);

        unawaited(controller.start());
      case AppLifecycleState.inactive:
        unawaited(_subscription?.cancel());
        _subscription = null;
        unawaited(controller.stop());
    }
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_subscription?.cancel());
    _subscription = null;
    super.dispose();
    await controller.dispose();
  }

  QrCodeData _parseQRCodeData(String rawData) {
    try {
      final lines = rawData.split('\n');
      String image = '',
          name = '',
          unit = '',
          color = '',
          externalInspection = '',
          length = '',
          width = '',
          grossWeight = '',
          netWeight = '',
          attribute = '',
          isQualityChecked = '';

      for (final line in lines) {
        final parts = line.split(':');
        if (parts.length == 2) {
          final key = parts[0].trim();
          final value = parts[1].trim();

          switch (key) {
            case 'Image':
              image = value;
              break;
            case 'Name':
              name = value;
              break;
            case 'Unit':
              unit = value;
              break;
            case 'Color':
              color = value;
              break;
            case 'External Inspection':
              externalInspection = value;
              break;
            case 'Length':
              length = value;
              break;
            case 'Width':
              width = value;
              break;
            case 'Gross Weight':
              grossWeight = value;
              break;
            case 'Net Weight':
              netWeight = value;
              break;
            case 'Attribute':
              attribute = value;
              break;
            case 'Is Quality Checked':
              isQualityChecked = value; // Gán trực tiếp giá trị chuỗi
              break;
          }
        }
      }

      final data = QrCodeData(
        image: image,
        name: name,
        unit: unit,
        color: color,
        externalInspection: externalInspection,
        length: length,
        width: width,
        grossWeight: grossWeight,
        netWeight: netWeight,
        attribute: attribute,
        isQualityChecked: isQualityChecked,
      );
      debugPrint('QR Code Data: $data');
      return data;
    } catch (e) {
      if (e is FormatException) {
        DelightfulToastHelper.error(
            context, 'QR Code Format Error', 'Please try again');
        throw Exception('Invalid QR code data: $e');
      } else {
        DelightfulToastHelper.error(
            context, 'QR Code Data Error', 'An error occurred: $e');
        throw Exception(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // final scanWindow = Rect.fromCenter(
    //   center: MediaQuery.sizeOf(context).center(Offset.zero),
    //   width: 250,
    //   height: 250,
    // );
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'QR Scan',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
        showBackArrow: true,
        onBackArrowPressed: () {
          context.pop();
        },
      ),
      body: Stack(
        children: [
          MobileScanner(
            controller: controller,
            // scanWindow: scanWindow,
            errorBuilder: (context, error, child) {
              return ScannerErrorWidget(error: error);
            },
            onDetect: (barcodes) {
              final barcode = barcodes.raw;
              if (barcode != null) {
                if (barcode.toString().contains('Image:') &&
                    barcode.toString().contains('Name:') &&
                    barcode.toString().contains('Unit:') &&
                    barcode.toString().contains('Is Quality Checked:')) {
                  try {
                    setState(
                      () {
                        final qrCodeData = _parseQRCodeData(barcode.toString());
                        controller.stop();
                        context
                            .read<QrScanBloc>()
                            .add(QrScanEvent.qrCodeScanned(qrCodeData));
                        context.pop();
                      },
                    );
                  } catch (e) {
                    DelightfulToastHelper.error(
                        context, 'QR Code Data Error', 'An error occurred: $e');
                  }
                } else {
                  // Xử lý trường hợp QR code không đúng định dạng

                  DelightfulToastHelper.error(
                      context, 'QR Code Format Error', 'Format Qr code error');
                  controller.stop();
                }
              }
            },
            // overlayBuilder: (context, constraints) {
            //   return Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Align(
            //       alignment: Alignment.bottomCenter,
            //       child: ScannedBarcodeLabel(barcodes: controller.barcodes),
            //     ),
            //   );
            // },
            fit: BoxFit.cover,
          ),
          // ValueListenableBuilder(
          //   valueListenable: controller,
          //   builder: (context, value, child) {
          //     if (!value.isInitialized ||
          //         !value.isRunning ||
          //         value.error != null) {
          //       return const SizedBox();
          //     }

          //     return CustomPaint(
          //       painter: ScannerOverlay(scanWindow: scanWindow),
          //     );
          //   },
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              color: Colors.black.withOpacity(0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ToggleFlashlightButton(controller: controller),
                  StartStopMobileScannerButton(controller: controller),
                  Expanded(child: Center(child: _buildBarcode(_barcode))),
                  SwitchCameraButton(controller: controller),
                  AnalyzeImageFromGalleryButton(controller: controller),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
