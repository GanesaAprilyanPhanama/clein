import 'package:clein/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Arahkan Kamera \nkamu ke Qr Code",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: MobileScanner(
                      onDetect: (barcodes) {
                        if (!isScanCompleted) {
                          isScanCompleted = true;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResultPage(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                Container(height: 60), // Adjust the height as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

