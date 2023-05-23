import 'package:flutter/material.dart';

class MyIconButtonWidget extends StatelessWidget {
  const MyIconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyStateFulWidget();
  }
}

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({super.key});

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

int volumen = 0;

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButton Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              tooltip: 'Incremente el volumen en 10',
              onPressed: () {
                // ignore: avoid_print
                print('Presiono el icono');
                setState(() {
                  volumen += 10;
                });
              },
              icon: const Icon(Icons.volume_up),
            ),
            Text('Volume : $volumen'),
          ],
        ),
      ),
    );
  }
}
