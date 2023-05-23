import 'package:conociendo_a_flutter/routes/routes.dart';
import 'package:conociendo_a_flutter/widgets/widgets_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learn Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //? initialRoute: '/',
        routes: getRoutes(),
        home: const WidgetList());
  }
}
