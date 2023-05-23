import 'package:flutter/material.dart';

class GridViewAdvanced extends StatelessWidget {
  static const showGrid = true;

  const GridViewAdvanced({Key? key})
      : super(key: key); // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
        centerTitle: true,
      ),
      body: Center(child: showGrid ? _buildGrid() : null),
    );
  }

  // #docregion grid
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));

  // The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
  // The List.generate() constructor allows an easy way to create
  // a list when objects have a predictable naming pattern.
  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      // ignore: avoid_unnecessary_containers
      (i) => Container(child: Image.asset('images/pic$i.jpg')));
  // #enddocregion grid

}
