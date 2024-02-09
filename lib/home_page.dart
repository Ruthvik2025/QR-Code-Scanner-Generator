import 'package:flutter/material.dart';
import 'package:qr_code_scaeer_generate/generate_qr_code.dart';
import 'package:qr_code_scaeer_generate/scan_qr_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("QR code"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScanQRCode()),
                  );
                });
              },
              child: Text("Scan QR Code"),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenerateQRCode()),
                  );
                });
              },
              child: Text("Generate QR Code"),
            ),
          ),
        ],
      ),
    );
  }
}
