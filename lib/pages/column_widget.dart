import 'package:flutter/material.dart';

/* Row: es un widget que muestra a sus elementos secundarios en una matriz horizontal. Para hacer que un niño se expanda para llenar el espacio horizontal disponible, envuelva el child en un ampliado widget. La row no se desplaza (y en general se considera un error tener más childs en row de los que caben en la habitación disponible). Si tiene una línea de widgets y desea que puedan desplazarse si hay espacio insuficiente, considere usar ListView. Para una variante vertical, consulte Columna. Si solo tiene un child, considere usar Alinear o Centrar para colocar al child. 

Este ejemplo divide el espacio disponible en tres (horizontalmente), y coloca el texto centrado en las dos primeras celdas y el logotipo de Flutter centrado en El tercero: 
Expanded: es un widget que expande un elemento secundario de Row , Column o Flex para que el niño llene el espacio disponible. El uso de un expandido hace que un elemento secundario sea Row, Column o Flex expandir para llenar el espacio disponible a lo largo del eje principal (por ejemplo, horizontalmente para una Fila o verticalmente para una Columna). Si se expanden varios hijos, el espacio disponible se divide entre ellos según el flexión factor Un Expandido debe ser descendiente de una Fila, Columna o Flex. y la ruta desde el Expandido widget Fila , Columna o Flex debe contener solo StatelessWidgets o StatefulWidgets (no otros tipos de widgets, como RenderObjectWidgets).  */

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Column Widget'),
        ),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('Deliver features faster', textAlign: TextAlign.center),
              Text('Craft beautiful UIs', textAlign: TextAlign.center),
            ],
          ),
          const Divider(thickness: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          const Divider(thickness: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          const Divider(thickness: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          const Divider(thickness: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Around'),
              Text('Around'),
              Text('Around'),
            ],
          ),
          const Divider(thickness: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Between'),
              Text('Between'),
              Text('Between'),
            ],
          ),
          const Divider(thickness: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Evenly'),
              Text('Evenly'),
              Text('Evenly'),
            ],
          ),
          const Divider(thickness: 2),
        ]));
  }
}
