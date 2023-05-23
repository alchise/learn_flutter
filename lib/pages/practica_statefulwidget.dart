import 'package:flutter/material.dart';

class PracticaStatefulWidget extends StatelessWidget {
  const PracticaStatefulWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const FavoriteColor();
  }
}

class FavoriteColor extends StatefulWidget {
  const FavoriteColor({super.key});

  @override
  State<FavoriteColor> createState() => _FavoriteColorState();
}

class _FavoriteColorState extends State<FavoriteColor> {
  String _titulo = "Este es el titulo";
  String _textoCuerpo = "Este es el texto del cuerpo";
  int _varColor = 0;
  Color? _varColorText = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titulo,
          style: TextStyle(color: _varColorText),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              _textoCuerpo,
              style: TextStyle(color: _varColorText),
            ),
            Row(
              children: [
                IconButton(
                    icon: const Icon(Icons.star),
                    color: Colors.red[500],
                    onPressed: (() {
                      _varColor = 1;
                      _selectColor();
                    })),
                IconButton(
                    icon: const Icon(Icons.star),
                    color: Colors.blue[500],
                    onPressed: (() {
                      _varColor = 2;
                      _selectColor();
                    })),
                IconButton(
                    icon: const Icon(Icons.star),
                    color: Colors.yellow[500],
                    onPressed: (() {
                      _varColor = 3;
                      _selectColor();
                    }))
              ],
            )
          ],
        ),
      ),
    );
  }

  void _selectColor() {
    setState(() {
      if (_varColor == 1) {
        _varColorText = Colors.red[500];
        _textoCuerpo = "¡HA SELECIONADO LA ESTRELLA ROJA ";
        _titulo = "¡HA SELECIONADO LA ESTRELLA ROJA";
      }
      if (_varColor == 2) {
        _varColorText = Colors.blue[100];
        _textoCuerpo = "¡HA SELECIONADO LA ESTRELLA AZUL";
        _titulo = "¡HA SELECIONADO LA ESTRELLA AZUL";
      }
      if (_varColor == 3) {
        _varColorText = Colors.yellow[500];
        _textoCuerpo = "¡HA SELECIONADO LA ESTRELLA AMARILLA";
        _titulo = "¡HA SELECIONADO LA ESTRELLA AMARILLA";
      }
    });
  }
}
