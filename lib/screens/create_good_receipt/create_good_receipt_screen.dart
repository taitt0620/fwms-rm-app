import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/bloc/create_good_receipt_note_bloc.dart';
import 'package:fwms_rm_app/features/qr-scan/bloc/qr_scan_bloc.dart';
import 'package:fwms_rm_app/screens/create_good_receipt/widgets/item_create_good_receipt_note.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CreateGoodReceiptScreen extends StatefulWidget {
  const CreateGoodReceiptScreen(
      {super.key, this.poCode, this.requestId, this.phase});

  final String? poCode;
  final String? requestId;
  final String? phase;
  @override
  State<CreateGoodReceiptScreen> createState() =>
      _CreateGoodReceiptScreenState();
}

class _CreateGoodReceiptScreenState extends State<CreateGoodReceiptScreen> {
  void _createGoodReceiptNote() async {
    try {
      if (widget.requestId == null || widget.poCode == null) {
        throw Exception('Request ID or PO Code is null');
      }
      context.read<CreateGoodReceiptNoteBloc>().add(
          CreateGoodReceiptNoteEvent.createGoodReceiptNote(
              poCode: widget.poCode ?? '',
              phase: int.parse(widget.phase ?? '0')));
    } catch (e) {
      print('Failed to get relate information: $e');
    }
  }

  @override
  void initState() {
    _createGoodReceiptNote();
    debugPrint('poCode: ${widget.poCode}');
    debugPrint('requestId: ${widget.requestId}');
    debugPrint('phase: ${widget.phase}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Create Good Receipt Note',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
        showBackArrow: true,
        onBackArrowPressed: () {
          context.pop();
        },
        actions: [
          BlocListener<QrScanBloc, QrScanState>(
            listener: (context, state) {
              state.whenOrNull(
                qrCodeDataReceived: (data) {
                  DelightfulToastHelper.success(
                      context, 'QR Code Data', 'Data: $data');
                  context.read<CreateGoodReceiptNoteBloc>().add(
                      CreateGoodReceiptNoteEvent.addGoodReceiptNoteDetail(
                          qrCodeData: data));
                },
              );
            },
            child: IconButton(
              onPressed: () async {
                await context.push('/qrscan');
              },
              icon: const Icon(Iconsax.scan_barcode,
                  size: 24, color: AppColors.black),
            ),
          ),
        ],
      ),
      body: BlocConsumer<CreateGoodReceiptNoteBloc, CreateGoodReceiptNoteState>(
        listener: (context, state) {
          state.whenOrNull(
            updateNoteFailure: (error) => DelightfulToastHelper.error(
                context, 'Create Note Error', error.toString()),
            createNoteSuccess: () {
              DelightfulToastHelper.success(
                  context, 'Create Note Success', 'Note created successfully');
              // context.go('/good-receipt-note');
            },
            createNoteFailure: (error) {
              DelightfulToastHelper.error(
                  context, 'Create Note Error', error.toString());
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
              createNoteInProgress: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              updateNoteInProgress: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              updateNoteSuccess: (goodReceipt) {
                debugPrint('Good Receipt Note: $goodReceipt');
                return ItemCreateGoodReceiptNote(
                  note: goodReceipt,
                  requestId: widget.requestId,
                );
              },
              orElse: () => const SizedBox());
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: BlocListener<QrScanBloc, QrScanState>(
      //   listener: (context, state) {
      //     state.whenOrNull(
      //       qrCodeDataReceived: (data) {
      //         DelightfulToastHelper.success(
      //             context, 'QR Code Data', 'Data: $data');
      //         context.read<CreateGoodReceiptNoteBloc>().add(
      //             CreateGoodReceiptNoteEvent.addGoodReceiptNoteDetail(
      //                 qrCodeData: data));
      //       },
      //     );
      //   },
      //   child: QRScanFloatingActionButton(
      //     height: 50,
      //     width: MediaQuery.of(context).size.width * 0.4,
      //     borderRadius: 100,
      //     onPressed: () async {
      //       await context.push('/qrscan');
      //     },
      //     backgroundColor: AppColors.primary,
      //     child: Container(
      //       padding:
      //           const EdgeInsets.only(left: AppSizes.lg, right: AppSizes.md),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Center(
      //             child: Text(
      //               'Scan QR',
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .bodyMedium!
      //                   .apply(color: AppColors.white),
      //             ),
      //           ),
      //           // const SizedBox(width: AppSizes.sm),
      //           const Icon(
      //             Iconsax.scan_barcode,
      //             size: 24,
      //             color: AppColors.white,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
