import 'package:flutter/material.dart';

class FABejemplo extends StatelessWidget {
  const FABejemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Widget'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Presione el boton para analizar',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('Ha presionado el FABejemplo');
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.amber,
        child: SizedBox(
          height: 50.0,
          child: Center(
            child: Text(
              'bottomNavigationBar',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}
