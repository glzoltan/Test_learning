import 'dart:developer';
import 'dart:io';
import './screens/qr_view_example.dart';
import './screens/qr_view_example2.dart';
import './screens/qr_view_example3.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


void main() => runApp(
       MaterialApp(
        home: MyHome(),
        routes: {
          QRViewExample.routeName: (ctx) => QRViewExample(),
          QRViewExample2.routeName: (ctx) => QRViewExample2(),
          QRViewExample3.routeName: (ctx) => QRViewExample3(),
          //QRViewExample.routeName: ()
        },
      ),
    );
/*commit2 */
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const QRViewExample(),
                ));*/
                Navigator.of(context).pushNamed(QRViewExample.routeName);
              },
              child: const Text('qrView'),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(QRViewExample2.routeName);
              },
              child: const Text('qrGenerate'),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(QRViewExample3.routeName);
              },
              child: const Text('Barcode'),
            ),
          ],
        ),
      ),
    );
  }
}
