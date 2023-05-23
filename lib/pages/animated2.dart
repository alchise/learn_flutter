/* 
Simplificando con AnimatedWidget
¿Qué aprenderás?
    -Como usar la clase helper AnimatedWidget (en lugar de addListener() y setState()) para crear un widget que se anime.
    -Usa AnimatedWidget para crear un widget que realiza una animación reutilizable. Para separar la transición desde el widget, usa un AnimatedBuilder.
    -Ejemplos de AnimatedWidgets en la API de Flutter: AnimatedBuilder, AnimatedModalBarrier, DecoratedBoxTransition, FadeTransition, PositionedTransition, RelativePositionedTransition, RotationTransition, ScaleTransition, SizeTransition, SlideTransition.
 */

import 'package:flutter/material.dart';

// #docregion AnimatedLogo
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
// #enddocregion AnimatedLogo

class LogoApp2 extends StatefulWidget {
  const LogoApp2({super.key});

  @override
  State<LogoApp2> createState() => LogoApp2State();
}

class LogoApp2State extends State<LogoApp2>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
