import 'package:flutter/material.dart';

class MySliderWidget extends StatelessWidget {
  const MySliderWidget({super.key});

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
  double _currentSliderValue = 20; // valor por defecto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Slider(
          value: _currentSliderValue,
          max: 100,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(
              () {
                _currentSliderValue = value;
                // ignore: avoid_print
                print(value);
              },
            );
          },
        ),
      ),
    );
  }
}
