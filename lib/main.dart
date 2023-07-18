import 'package:alubank/screens/home.dart';
import 'package:alubank/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alubank',
      theme: AppTheme,
      home: const HomeScreen(),
    );
  }
}

