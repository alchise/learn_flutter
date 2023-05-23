import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Widget'),
        centerTitle: true,
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    /* Ini Constructor de Texto */
    Widget textEjemplo = const Text(
      'CheckBox',
      style: TextStyle(fontSize: 20),
    );
    /* End Constructor de Texto */

    /* Ini class de color interactivo estado */
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    /* End class de color interactivo estado */

    /* Ini Constructor de CheckBox */
    Widget checkBoxEjemplo = Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked1,
      onChanged: (bool? value) {
        setState(() {
          isChecked1 = value!;
          // ignore: avoid_print
          print('Pulso CheckBox $isChecked1');
        });
      },
    );
    /* End Constructor de CheckBox */

    /* Ini Constructor de CheckboxListTile */
    Widget checkBoxListTileEjemplo = CheckboxListTile(
      title: const Text('CheckboxListTile', style: TextStyle(fontSize: 20)),
      controlAffinity: ListTileControlAffinity.platform,
      value: isChecked2,
      onChanged: (bool? value) {
        setState(() {
          isChecked2 = value!;
          // ignore: avoid_print
          print('Pulso CheckBoxListTile $isChecked2');
        });
      },
      activeColor: Colors.blue,
      checkColor: Colors.white,
      secondary: const Icon(Icons.access_alarm),
    );
    /* End Constructor de CheckboxListTile */

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              textEjemplo,
              checkBoxEjemplo,
            ],
          ),
        ),
        const Divider(
          thickness: 3.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: checkBoxListTileEjemplo,
        ),
        const Divider(
          thickness: 3.0,
        ),
      ],
    );
  }
}
