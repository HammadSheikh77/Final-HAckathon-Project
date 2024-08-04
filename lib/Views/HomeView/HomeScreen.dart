import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1225),
      appBar: AppBar(
        leading: Image.asset('assets/icons/􀌇.png'),
      ),
    );
  }
}