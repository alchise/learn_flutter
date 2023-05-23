import 'package:flutter/material.dart';
/*
Flutter proporciona una serie de widgets que te ayudan a crear aplicaciones que siguen el Material Design. Una aplicación Material comienza con el widget MaterialApp que construye una serie de widgets en la raíz de tu aplicación, incluyendo un Navigator, que gestiona una pila de widgets identificados por strings, también conocidas como “routes”. El Navigator te permite una transición sin problemas entre pantallas de su aplicación. Utilizar el widget MaterialApp es totalmente opcional, pero es una buena práctica.
*/

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: null,
          ),
          title: const Text('Material Components'),
          centerTitle: true,
          actions: const <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ]),
      body: const Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
