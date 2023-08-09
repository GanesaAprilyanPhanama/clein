import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 268,
              width: 150,
              child: Image(
                image: AssetImage("images/handinbottle.png"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: Center(
                child: Text(
                  'Silahkan Letakkan botol plastik kamu ke dalam Clein',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff2DAEF6),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: SizedBox(
                width: 340.0,
                height: 55.0,
                child: ElevatedButton(
                  onPressed: () {
                    //
                  },
                  child: Text(
                    'Selesai',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2DAEF6),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: SizedBox(
                width: 340.0,
                height: 55.0,
                child: ElevatedButton(
                  onPressed: () {
                    //
                  },
                  child: Text(
                    'Batal',
                    style: TextStyle(
                        color: Color(0xff2DAEF6),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            )
          ]),
    );
  }
}
