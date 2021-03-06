import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.filter_center_focus),
      onPressed: () async {
        String barcodeScanRes = 'Milthon-15.63..285..';
        try {
          // barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          //     '#ff6666', 'Cancelar', true, ScanMode.QR);
          print(barcodeScanRes);
        } on PlatformException {
          barcodeScanRes = 'Failed to get platform version.';
        }
      },
    );
  }
}
