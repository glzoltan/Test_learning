import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRViewExample2 extends StatefulWidget {
  static const routeName = '/qr-view2';
  @override
  _QRViewExample2State createState() => _QRViewExample2State();
}
class _QRViewExample2State extends State<QRViewExample2> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR GENERATOR'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 300,
                //embeddedImage: AssetImage('images/logo.png'),
                embeddedImageStyle: QrEmbeddedImageStyle(
                  size: Size(80,80)
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter URL'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Text('GENERATE QR')),
           
            ],
          ),
        ),
      ),
    );
  }
}