import 'package:flutter/material.dart';
import 'package:qr_code_scaeer_generate/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Qr_Code_scanner_generator",
      home: HomePage(),
    );
  }
}
