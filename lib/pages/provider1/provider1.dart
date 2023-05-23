import 'package:flutter/widgets.dart';

class TextProvider with ChangeNotifier {
  String _text1 = "Valor1 inicial";
  String _text2 = "Valor2 inicial";

  String get text1 => _text1;
  String get text2 => _text2;

  Future<void> setTexts(
      {required String value1, required String value2}) async {
    _text1 = value1;
    _text2 = value2;

    notifyListeners();
  }
}
