import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code"),
      ),
      body: Container(
        child: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                color: Colors.white,
                child: QrImageView(
                  data: '1234567890',
                  version: 4,
                  size: 200.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
