import 'package:flutter/material.dart';
import 'cliente_home.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Área do Cliente',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClienteHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
itgnit
