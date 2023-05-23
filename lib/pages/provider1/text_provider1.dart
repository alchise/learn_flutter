import 'package:conociendo_a_flutter/pages/provider1/provider1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTextProvider1 extends StatelessWidget {
  const MyTextProvider1({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<TextProvider>(create: (_) => TextProvider())
        ],
        builder: (context, _) {
          return const HomePage();
        });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextProvider varWatch = context.watch<TextProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider en Flutter - ejemplo 1'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text(varWatch.text1, style: const TextStyle(fontSize: 20)),
          Text(varWatch.text2, style: const TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: () {
              context
                  .read<TextProvider>()
                  .setTexts(value1: "Valor1 final", value2: "Vslor2 final");
            },
            child: const Text('Cambiar textos', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
