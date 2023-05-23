/* 
Monitorzando el progreso de la animación
¿Qué aprenderás?

    Usa addStatusListener() para notificaciones de cambios del estado de la animacion, como empezando, parando, o invirtiendo la dirección.
    Ejecuta una animación en un loop infinito, invirtiendo la dirección cuando la animación ha sido completada o regresado a su estado de inicio.
 */

import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({super.key, required Animation<double> animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }
}

class LogoApp3 extends StatefulWidget {
  const LogoApp3({Key? key}) : super(key: key);

  @override
  LogoApp3State createState() => LogoApp3State();
}

// #docregion print-state
class LogoApp3State extends State<LogoApp3>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      // #enddocregion print-state
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      // #docregion print-state
      // ignore: avoid_print
      ..addStatusListener((state) => print('$state'));
    controller.forward();
  }
  // #enddocregion print-state

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // #docregion print-state
}
