import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// A screen that displays a QR code inside a card.

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
        title: const Text("QR Code"),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              color: Colors.white,
              child: QrImageView(
                data: '1234567890', // Data encoded in the QR code
                version: QrVersions.auto, // Auto-select QR version
                size: 200.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
