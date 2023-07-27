import 'package:clein/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerPage extends StatefulWidget {
  const QrScannerPage({super.key});

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  bool isScanCompleted = false;

  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Arahkan Kamera \nkamu ke Qr Code",
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 24, color: Colors.black),
            ),
            Container(
              height: 500,
              width: 500,
              child: MobileScanner(
                onDetect: (barcodes) {
                  if (!isScanCompleted) {
                    Barcode code = Barcode(rawValue: "---");
                    isScanCompleted = true;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResultPage()));
                  }
                },
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
