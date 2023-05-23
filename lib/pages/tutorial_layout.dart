import 'package:flutter/material.dart';

class TutorialLayout extends StatelessWidget {
  const TutorialLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // # ini docregion titleSection - Constructor
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
    // # end docregion titleSection - Constructor

    /* Como el código para construir cada columna es casi idéntico, crea un método de ayuda privado llamado buildButtonColumn(), que toma un color, un Icono y Texto, y devuelve una columna con sus widgets pintados con el color dado. */

    // # ini docregion buttonSection - Constructor
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
          _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
        ],
      ),
    );
    // # end docregion buttonSection - Constructor

    // # ini docregion textSection - Constructor
    Widget textSection = Container(
        padding: const EdgeInsets.all(32),
        child: const Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            style: TextStyle(fontSize: 16),
            softWrap: true));
    // # end docregion textSection - Constructor

    return Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial de Layout'),
          centerTitle: true,
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          const Divider(),
          titleSection,
          const Divider(),
          buttonSection,
          const Divider(),
          textSection,
          const Divider(),
        ]));
  }

  /* Construye la fila que contiene estas columnas llamando a la función y pasando el color, Icon, y el texto específico de esa columna. Alinea las columnas a lo largo del eje principal utilizando MainAxisAlignment.spaceEvenly para organizar el espacio libre uniformemente antes, entre y después de cada columna */

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
