/* Refactorizando con AnimatedBuilder
¿Qué aprenderás?
    Un [AnimatedBuilder][] entiende como renderizar la transición.
    Un AnimatedBuilder no conoce como renderizar el widget, ni tampoco administra el objeto Animation.
    Usa AnimatedBuilder para describir una animación como parte de un método build de otro widget. Si solo quieres definir un widget con una animación reusable, use AnimatedWidget.
    Ejemplos de AnimatedBuilders en la API de Flutter: BottomSheet, ExpansionTile, PopupMenu, ProgressIndicator, RefreshIndicator, Scaffold, SnackBar, TabBar, TextField.
*/

import 'package:flutter/material.dart';

// #docregion LogoWidget
class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  // Leave out the height and width so it fills the animating parent
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const FlutterLogo(),
      );
}
// #enddocregion LogoWidget

// #docregion GrowTransition
class GrowTransition extends StatelessWidget {
  const GrowTransition({Key? key, required this.child, required this.animation})
      : super(key: key);

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) => SizedBox(
                  height: animation.value,
                  width: animation.value,
                  child: child,
                ),
            child: child),
      );
}
// #enddocregion GrowTransition

class LogoApp4 extends StatefulWidget {
  const LogoApp4({Key? key}) : super(key: key);

  @override
  LogoApp4State createState() => LogoApp4State();
}

// #docregion print-state
class LogoApp4State extends State<LogoApp4> with SingleTickerProviderStateMixin {
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
  // #enddocregion print-state

  @override
  Widget build(BuildContext context) => GrowTransition(
        animation: animation,
        child: const LogoWidget(),
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // #docregion print-state
}

