import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack & Container Widget'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          const Divider(thickness: 2),
          SizedBox(
            width: 250,
            height: 250,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black.withAlpha(0),
                        Colors.black12,
                        Colors.black45,
                      ],
                    ),
                  ),
                  child: const Text(
                    'Foreground Text',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 2),
          Stack(
            children: [
              Container(
                width: 400,
                height: 100,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text('Container debajo',
                    style: TextStyle(
                        fontSize: 40, fontFamily: 'Gloria_Hallelujah')),
              )
            ],
          ),
          const Divider(thickness: 2),
          Container(
            height: 56.0,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(color: Colors.blue[500]),
            child: Row(
              children: const <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigation menu',
                  onPressed: null, // null desactiva el botón
                ),
                // Expanded expande a su hijo para rellenar el espacio disponible.
                Expanded(
                  child: Text(
                    'Expande para rellenar el espacio disponible.',
                    style: TextStyle(
                        fontFamily: 'Gloria_Hallelujah', fontSize: 18.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: null,
                ),
              ],
            ),
          ),
          const Divider(thickness: 2),
          _buildImageColumn,
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.black38),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            margin: const EdgeInsets.all(4),
            child: Image.asset('assets/img1.jpg'),
          ),
        ],
      ),
    );
  }

  final _buildImageColumn = Container(
    padding: const EdgeInsets.all(20),
    decoration: const BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: [
        Image.asset('assets/img1.jpg'),
        const SizedBox(height: 20),
        Image.asset('assets/img1.jpg'),
      ],
    ),
  );
}
