import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrstr = "let's Scan it";
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(31, 122, 140, 1.0),
          title: Text('Scanning QR code'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                qrstr,
                style: TextStyle(
                    color: Color.fromRGBO(31, 122, 140, 1.0), fontSize: 30),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              MaterialButton(
                  onPressed: scanQr,
                  child: Icon(Icons.qr_code_scanner,
                      size: MediaQuery.of(context).size.height / 8,
                      color: Color.fromRGBO(31, 122, 140, 1.0))),
              SizedBox(
                height: width,
              )
            ],
          ),
        ));
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}
