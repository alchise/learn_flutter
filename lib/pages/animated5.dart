/* Animaciones simultáneas
¿Qué aprenderás?
  La clase [Curves][] define un array de curvas usadas comúnmente que puedes usar con un [CurvedAnimation][].
*/
// #docregion ShakeCurve
import 'dart:math';

// #enddocregion ShakeCurve
import 'package:flutter/material.dart';

void main() => runApp(const LogoApp5());

// #docregion diff
class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({super.key, required Animation<double> animation})
      : super(listenable: animation);

  // Make the Tweens static because they don't change.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}

class LogoApp5 extends StatefulWidget {
  const LogoApp5({super.key});

  @override
  State<LogoApp5> createState() => _LogoApp5State();
}

class _LogoApp5State extends State<LogoApp5> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // #docregion AnimationController, tweens
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // #enddocregion AnimationController, tweens
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
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
// #enddocregion diff

// Extra code used only in the tutorial explanations. It is not used by the app.

class UsedInTutorialTextOnly extends _LogoApp5State {
  UsedInTutorialTextOnly() {
    // ignore: unused_local_variable, prefer_typing_uninitialized_variables
    var animation, sizeAnimation, opacityAnimation, tween, colorTween;

    // #docregion CurvedAnimation
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    // #enddocregion CurvedAnimation

    // #docregion tweens
    sizeAnimation = Tween<double>(begin: 0, end: 300).animate(controller);
    opacityAnimation = Tween<double>(begin: 0.1, end: 1).animate(controller);
    // #enddocregion tweens

    // #docregion tween
    tween = Tween<double>(begin: -200, end: 0);
    // #enddocregion tween

    // #docregion colorTween
    colorTween = ColorTween(begin: Colors.transparent, end: Colors.black54);
    // #enddocregion colorTween
  }

  usedInTutorialOnly1() {
    // #docregion IntTween
    AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    Animation<int> alpha = IntTween(begin: 0, end: 255).animate(controller);
    // #enddocregion IntTween
    return alpha;
  }

  usedInTutorialOnly2() {
    // #docregion IntTween-curve
    AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    final Animation<double> curve =
        CurvedAnimation(parent: controller, curve: Curves.easeOut);
    Animation<int> alpha = IntTween(begin: 0, end: 255).animate(curve);
    // #enddocregion IntTween-curve
    return alpha;
  }
}

// #docregion ShakeCurve
class ShakeCurve extends Curve {
  @override
  double transform(double t) => sin(t * pi * 2);
}
