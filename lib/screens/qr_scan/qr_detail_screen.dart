import 'package:flutter/material.dart';
import 'package:fwms_rm_app/features/qr-scan/models/qr_code_data.dart';

class QrDetailScreen extends StatefulWidget {
  const QrDetailScreen({super.key, required this.qrCodeData});
  final QrCodeData qrCodeData;

  @override
  State<QrDetailScreen> createState() => _QrDetailScreenState();
}

class _QrDetailScreenState extends State<QrDetailScreen> {
  @override
  void initState() {
    debugPrint('QR Code Data detail: ${widget.qrCodeData.toString()}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Detail'),
      ),
      body: Center(
        child: Text(
          widget.qrCodeData.toString(),
          // overflow: TextOverflow.fade,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
