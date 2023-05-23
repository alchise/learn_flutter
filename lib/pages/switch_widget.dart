import 'package:flutter/material.dart';

class MySwitchWidget extends StatelessWidget {
  const MySwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isActived = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
          value: isActived,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(
              () {
                isActived = value;
                // ignore: avoid_print
                print('Cambio el estado de switch widget $value');
              },
            );
          },
        ),
      ),
    );
  }
}
