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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when back arrow is pressed
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
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
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Arahkan Kamera \nkamu ke Qr Code",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Container(
                  height: 210,
                  width: 210,
                  child: Image(
                    image: AssetImage("images/qrsquare.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
