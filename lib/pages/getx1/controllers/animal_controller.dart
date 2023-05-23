import 'package:get/get.dart';
import 'package:conociendo_a_flutter/pages/getx1/shared/animals_list_shared.dart';

class AnimalController extends GetxController {
  var list = <String>[].obs;
  /* ---------------------------------------------------------------------------- */
  @override
  void onInit() {
    super.onInit();
    fetchAnimals();
  }

  /* ---------------------------------------------------------------------------- */
  void add(item) => list.add(item);
  /* ---------------------------------------------------------------------------- */
  void remove(index) => list.removeAt(index);
  /* ---------------------------------------------------------------------------- */
  void fetchAnimals() async {
    await Future.delayed(const Duration(seconds: 1));
    list.addAll(animalsList);
  }
}
