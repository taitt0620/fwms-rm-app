part of 'qr_scan_bloc.dart';

@freezed
class QrScanState with _$QrScanState {
  const factory QrScanState.initial() = _Initial;
  const factory QrScanState.qrCodeDataReceived(QrCodeData data) = _QRCodeDataReceived;
}
