import 'package:conociendo_a_flutter/pages/getx1/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

/* ********************************************************************************************* */

class MyAppGetX1 extends StatelessWidget {
  const MyAppGetX1({Key? key}) : super(key: key);

  /* ---------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
