import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends StatelessWidget {
  const CounterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return
        /* Proporciona el modelo a todos los widgets dentro de la aplicación,
        estamos usando ChangeNotifierProvider porque es una forma sencilla de
        reconstruir widgets cuando cambia un modelo.
        También podríamos simplemente usar Provider, pero entonces tendríamos
        que escuchar Counter nosotros mismos.
        */
        ChangeNotifierProvider(
      /* Inicialice el modelo en el builder. De esa manera, Provider puede
      poseer el ciclo de vida de Counter, asegurándose de llamar a 'dispose'
      cuando ya no se necesita. */
      create: (context) => Counter(),
      child: const MyApp(),
    );
  }
}

/// [ChangeNotifier] es una clase de `flutter:foundation`.
/// [Counter] no depende de Provider.
class Counter with ChangeNotifier {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            // El consumidor busca un widget Provider antecesor
            // y recupera su modelo (Counter, en este caso).
            // Luego usa ese modelo para construir widgets, y activará
            // se reconstruye si se actualiza el modelo.
            Consumer<Counter>(
              builder: (context, counter, child) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Puede acceder a sus providers desde cualquier lugar al que tenga acceso
          // al contexto. Una forma es usar Provider.of<Counter>(context).
          // El paquete de provider también define métodos de extensión en contexto
          // sí mismo. Puede llamar a context.watch<Counter>() en un método de compilación
          // de cualquier widget para acceder al estado actual de Counter y preguntar
          // Flutter para reconstruir su widget cada vez que cambie Counter.
          // No puedes usar context.watch() fuera de los métodos de compilación, porque eso
          // a menudo conduce a errores sutiles. En su lugar, debe utilizar
          // context.read<Counter>(), que obtiene el estado actual
          // pero no le pide a Flutter futuras reconstrucciones.
          // Dado que estamos en una devolución de llamada que se llamará cada vez que el usuario
          // toca el FloatingActionButton, no estamos en el método de compilación aquí.
          // Deberíamos usar context.read().
          var counter = context.read<Counter>();
          counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
