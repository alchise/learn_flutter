import 'package:flutter/material.dart';

class HolaMundo extends StatelessWidget {
  const HolaMundo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Mundo'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          ' Hello World ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
              backgroundColor: Colors.black45),
        ),
      ),
    );
  }
}
