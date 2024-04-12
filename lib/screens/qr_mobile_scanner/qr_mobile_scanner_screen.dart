import 'package:flutter/material.dart';

class QrCodeMobileScannerScreen extends StatefulWidget {
  const QrCodeMobileScannerScreen({super.key});

  @override
  State<QrCodeMobileScannerScreen> createState() =>
      _QrCodeMobileScannerScreenState();
}

class _QrCodeMobileScannerScreenState extends State<QrCodeMobileScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Qr Code Mobile Scanner',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
