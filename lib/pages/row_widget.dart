import 'package:flutter/material.dart';

/* Row: es un widget que muestra a sus elementos secundarios en una matriz horizontal. Para hacer que un niño se expanda para llenar el espacio horizontal disponible, envuelva el child en un ampliado widget. La row no se desplaza (y en general se considera un error tener más childs en row de los que caben en la habitación disponible). Si tiene una línea de widgets y desea que puedan desplazarse si hay espacio insuficiente, considere usar ListView. Para una variante vertical, consulte Columna. Si solo tiene un child, considere usar Alinear o Centrar para colocar al child. 

Este ejemplo divide el espacio disponible en tres (horizontalmente), y coloca el texto centrado en las dos primeras celdas y el logotipo de Flutter centrado en El tercero: 
Expanded: es un widget que expande un elemento secundario de Row , Column o Flex para que el niño llene el espacio disponible. El uso de un expandido hace que un elemento secundario sea Row, Column o Flex expandir para llenar el espacio disponible a lo largo del eje principal (por ejemplo, horizontalmente para una Fila o verticalmente para una Columna). Si se expanden varios hijos, el espacio disponible se divide entre ellos según el flexión factor Un Expandido debe ser descendiente de una Fila, Columna o Flex. y la ruta desde el Expandido widget Fila , Columna o Flex debe contener solo StatelessWidgets o StatefulWidgets (no otros tipos de widgets, como RenderObjectWidgets).  */

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Row Widget'),
        ),
        body: ListView(children: [
          Row(
            children: const <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text('Around'),
              Text('Around'),
              Text('Around'),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text('Between'),
              Text('Between'),
              Text('Between'),
            ],
          ),
          const Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Text('Evenly'),
              Text('Evenly'),
              Text('Evenly'),
            ],
          ),
          const Divider(thickness: 2),
        ]));
  }
}
