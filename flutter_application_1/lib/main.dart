import 'package:flutter/material.dart';
import 'pages/inicial_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc y Cubit Demo',
      home: const InicialPage(),
    );
  }
}
