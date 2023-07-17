import 'package:flutter/material.dart';

import 'package:alubank/components/sections/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
        ],
      ),
    );
  }
}
