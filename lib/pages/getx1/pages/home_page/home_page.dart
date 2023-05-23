import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:conociendo_a_flutter/pages/getx1/controllers/animal_controller.dart';
import 'package:conociendo_a_flutter/pages/getx1/shared/animals_list_shared.dart';

/* ********************************************************************************************* */

class HomePage extends StatelessWidget {
  final AnimalController animalController = Get.put(AnimalController());

  /* ---------------------------------------------------------------------------- */
  HomePage({Key? key}) : super(key: key);
  /* ---------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: GetX<AnimalController>(
        //   builder: (_) => ListView.builder(
        child: Obx(
          () => ListView.builder(
            itemCount: animalController.list.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                animalController.list[index],
                style: Theme.of(context).textTheme.headline6,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => animalController.remove(index),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: TextButton(
          onPressed: () => animalController
              .add(animalsList[Random().nextInt(animalsList.length)]),
          child: const Text('Añadir Animal',
              style: TextStyle(color: Colors.blueAccent, fontSize: 22)),
        ),
      ),
    );
  }
}
