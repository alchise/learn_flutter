import 'package:get/get.dart';

class MiControlador extends GetxController {
  var nombre = "Maria".obs;
  var contador = 0.obs;

  incrementar() {
    if (contador.value > 10) {
      contador.value = 0;
    } else {
      contador.value++;
    }
    
  }
}
