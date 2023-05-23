import 'package:conociendo_a_flutter/pages/getx2/controlador/controlador.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppGetx2 extends StatelessWidget {
  const MyAppGetx2({super.key});

  @override
  Widget build(BuildContext context) {
    final controlador = Get.put(MiControlador());

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX en flutter - ejemplo 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Contador: ${controlador.contador.value}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Divider(),
            Obx(
              () => Text(
                'Nombre: ${controlador.nombre.value}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                controlador.incrementar();
              },
              child: const Text('Aumentar', style: TextStyle(fontSize: 20)),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                controlador.nombre.value = "Pedro";
              },
              child: const Text('Disminuir', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
