import 'package:flutter/material.dart';

/* ¿Qué aprenderás?

    -El objeto [Animation][], una clase principal en la biblioteca de animaciones de Flutter, interpola los valores usados para guiar una animación.
    -El objeto Animation conoce el estado actual de una animación (por ejemplo, ya sea que, ha comenzado, parado, o se mueve adelante o hacia atrás), pero no sabe nada de lo que aparece en la pantalla.
    -Un [AnimationController][] administra el Animation.
    -Un [CurvedAnimation][] define progresiones como una curva no lineal.
    -Un [Tween][] interpola entre el rango de datos usados por el objeto que está siendo animado. Por ejemplo, un Tween podría definir una interpolación de rojo a azul, o de 0 a 255.
    -Usa Listeners y StatusListeners para monitorizar los cambios de estado de la animación.
    -Como añadir animación básica a un widget usando addListener() y setState().
    -Cada vez que el objeto Animation genera un nuevo número, la función addListener() llama a setState().
    -Como definir un AnimatedController con el parámetro vsync requerido.
   - Entendiendo la sintaxis “..” en “..addListener”, también conocida como cascade notation en Dart.
    -Para hacer una clase privada, inicia su nombre con un guión bajo (_).

 */
class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  LogoAppState createState() => LogoAppState();
}

class LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);

    animation = Tween<double>(begin: 0, end: 400).animate(controller)
      ..addListener(() {
        setState(() {
          // ignore: avoid_print
          print(animation.value);
        });
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
