import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/scanned_barcode_label.dart';
import 'package:fwms_rm_app/screens/qr_scan/widgets/scanner_error_widget.dart';
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

class _QrScanScreenState extends State<QrScanScreen> {
  final MobileScannerController cameraController = MobileScannerController(
    formats: const [BarcodeFormat.qrCode],
  );

  QRCodeData? scannedData;

  @override
  void initState() {
    super.initState();
    cameraController.start();
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await cameraController.dispose();
  }

  QRCodeData _parseQRCodeData(String rawData) {
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

      return QRCodeData(
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
    } catch (e) {
      if (e is FormatException) {
        // Xử lý lỗi định dạng QR code

        DelightfulToastHelper.error(
            context, 'QR Code Format Error', 'Please try again');
        throw Exception('Invalid QR code data: $e');
      } else {
        // Xử lý các lỗi khác
        DelightfulToastHelper.error(
            context, 'QR Code Data Error', 'An error occurred: $e');
        throw Exception(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final scanWindow = Rect.fromCenter(
      center: MediaQuery.sizeOf(context).center(Offset.zero),
      width: 200,
      height: 200,
    );
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
        fit: StackFit.expand,
        children: [
          Center(
            child: MobileScanner(
              fit: BoxFit.cover,
              controller: cameraController,
              scanWindow: scanWindow,
              errorBuilder: (context, error, child) {
                return ScannerErrorWidget(error: error);
              },
              overlayBuilder: (context, constraints) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ScannedBarcodeLabel(
                        barcodes: cameraController.barcodes),
                  ),
                );
              },
            ),
          ),
          ValueListenableBuilder(
            valueListenable: cameraController,
            builder: (context, value, child) {
              if (!value.isInitialized ||
                  !value.isRunning ||
                  value.error != null) {
                return const SizedBox();
              }

              return CustomPaint(
                painter: ScannerOverlay(scanWindow: scanWindow),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child:
                          ToggleFlashlightButton(controller: cameraController)),
                  Expanded(
                      child: SwitchCameraButton(controller: cameraController)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScannerOverlay extends CustomPainter {
  const ScannerOverlay({
    required this.scanWindow,
    this.borderRadius = 12.0,
  });

  final Rect scanWindow;
  final double borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: use `Offset.zero & size` instead of Rect.largest
    // we need to pass the size to the custom paint widget
    final backgroundPath = Path()..addRect(Rect.largest);

    final cutoutPath = Path()
      ..addRRect(
        RRect.fromRectAndCorners(
          scanWindow,
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
          bottomLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
        ),
      );

    final backgroundPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.dstOut;

    final backgroundWithCutout = Path.combine(
      PathOperation.difference,
      backgroundPath,
      cutoutPath,
    );

    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    final borderRect = RRect.fromRectAndCorners(
      scanWindow,
      topLeft: Radius.circular(borderRadius),
      topRight: Radius.circular(borderRadius),
      bottomLeft: Radius.circular(borderRadius),
      bottomRight: Radius.circular(borderRadius),
    );

    // First, draw the background,
    // with a cutout area that is a bit larger than the scan window.
    // Finally, draw the scan window itself.
    canvas.drawPath(backgroundWithCutout, backgroundPaint);
    canvas.drawRRect(borderRect, borderPaint);
  }

  @override
  bool shouldRepaint(ScannerOverlay oldDelegate) {
    return scanWindow != oldDelegate.scanWindow ||
        borderRadius != oldDelegate.borderRadius;
  }
}
