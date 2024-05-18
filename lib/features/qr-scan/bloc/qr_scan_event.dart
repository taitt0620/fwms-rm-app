part of 'qr_scan_bloc.dart';

@freezed
class QrScanEvent with _$QrScanEvent {
  const factory QrScanEvent.started() = _Started;
  const factory QrScanEvent.qrCodeScanned(QrCodeData data) = _QRCodeScanned;
}