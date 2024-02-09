import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({Key? key}) : super(key: key);

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate QR Code"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Wrap QrImage with a condition to check if text is not empty
            if (urlController.text.isNotEmpty)
              QrImageView(
                data: urlController.text,
                version: QrVersions.auto,
                size: 200.0,
              ),
            Center(
              child: TextField(
                controller: urlController,
                decoration: InputDecoration(
                  hintText: "Enter a Data",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Enter your data",
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Generate QR Code"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
