import 'package:flutter/material.dart';

class ParentAdmEstado extends StatefulWidget {
  const ParentAdmEstado({super.key});

  @override
  State<ParentAdmEstado> createState() => _ParentAdmEstadoState();
}

class _ParentAdmEstadoState extends State<ParentAdmEstado> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('El widget padre administra el estado'),
        centerTitle: true,
      ),
      body: Center(
        child: TapboxB(
          active: _active,
          onChanged: _handleTapboxChanged,
        ),
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  const TapboxB({super.key, required this.active, required this.onChanged});
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
