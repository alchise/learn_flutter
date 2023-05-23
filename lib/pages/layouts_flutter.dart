import 'package:flutter/material.dart';

class LayoutsFlutter extends StatelessWidget {
  const LayoutsFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    // Variable tipo Row que muestra las estrellas
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    // Variable tipo estilo de texto
    var ratingsTextStyle = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Raleway',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Variable tipo Row que muestra el puntaje y se anida con las estrellas
    var ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '170 Reviews',
            style: ratingsTextStyle,
          ),
        ],
      ),
    );

    // Variable con estilo personalizado
    var iconList = DefaultTextStyle.merge(
      style: ratingsTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Variable combinando variables
    var leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          Text('Titulo', style: ratingsTextStyle),
          Text('Subtitulo', style: ratingsTextStyle),
          ratings,
          iconList,
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Layouts en Flutter'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Divider(thickness: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Column 1'),
                    const Text('Column 1'),
                    const Text('Column 1'),
                    Row(
                      children: [
                        const Text('Hello World max'),
                        Icon(
                          Icons.star,
                          color: Colors.red[500],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: const [
                            Text('A1'),
                            Text('A2'),
                            Text('A3'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('B1'),
                            Text('B2'),
                            Text('B3'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('C1'),
                            Text('C2'),
                            Text('C3'),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Image.asset('assets/images/img1.jpg'),
                const Text('Otra texto'),
              ],
            ),
            const Divider(thickness: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/img1.jpg'),
                Image.asset('assets/images/img1.jpg'),
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
              ],
            ),
            const Divider(thickness: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
              ],
            ),
            const Divider(thickness: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset('assets/images/img1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
              ],
            ),
            const Divider(thickness: 2),
            ratings,
            const Divider(thickness: 2),
            iconList,
            const Divider(thickness: 2),
            leftColumn,
            const Divider(thickness: 2),
          ],
        ));
  }
}
