import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';

part 'qr_scan_event.dart';
part 'qr_scan_state.dart';
part 'qr_scan_bloc.freezed.dart';

class QrScanBloc extends Bloc<QrScanEvent, QrScanState> {
  QrScanBloc() : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_QRCodeScanned>(_onQRCodeScannedStarted);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<QrScanState> emit) async {
    emit(const _Initial());
  }

  FutureOr<void> _onQRCodeScannedStarted(_QRCodeScanned event, Emitter<QrScanState> emit) async {
    emit(QrScanState.qrCodeDataReceived(event.data));
  }
}
