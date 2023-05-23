import 'package:flutter/material.dart';

class MyRutas extends StatelessWidget {
  const MyRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
      // en el Widget FirstScreen
      initialRoute: '/',
      routes: {
        // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
        '/': (context) => const FirstScreen(),
        // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera pantalla'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Navega a la segunda pantalla cuando la pulsen!
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Ir a la segunda pantalla',
              style: TextStyle(
                fontSize: 25.0,
              )),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Navega a la primera pantalla cuando la pulsen!
            Navigator.pop(context);
          },
          child: const Text('Ir a la primera pantalla',
              style: TextStyle(
                fontSize: 25.0,
              )),
        ),
      ),
    );
  }
}
