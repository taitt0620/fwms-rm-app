import 'package:flutter/material.dart';
import 'package:fwms_rm_app/screens/qr_scan/found_screen.dart';
import 'package:fwms_rm_app/screens/qr_scan/qr_scanner_overlay.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  @override
  void initState() {
    // TODO: implement initState
    this._screenWasClosed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("Scanner",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            MobileScanner(
              controller: cameraController,
              onDetect: (barcode) => _foundBarcode(barcode),
            ),
            QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5)),
          ],
        ));
  }

  void _foundBarcode(BarcodeCapture barcode) {
    print(barcode);
    if (!_screenOpened) {
      final Object code = barcode.raw ?? "___";
      _screenOpened = false;
      //here push navigation result page
      Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      FoundScreen(value: code, screenClose: _screenWasClosed)))
          .then((value) => print(value));

      // builder: builder) => FoundScreen(value: code, screenClose: _screenWasClosed))
    }
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}