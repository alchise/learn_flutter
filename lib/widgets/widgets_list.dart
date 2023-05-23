import 'package:conociendo_a_flutter/widgets/class_widget.dart';
import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Widget en Flutter'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: widgetList.length,
          itemBuilder: (context, index) {
            ClassWidget widgetElement = widgetList[index];
            return Card(
              child: ListTile(
                title: Text(widgetElement.title),
                leading: Image.network(widgetElement.imageUrl),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.pushNamed(context, widgetElement.ruta);
                },
              ),
            );
          }),
    );
  }
}
