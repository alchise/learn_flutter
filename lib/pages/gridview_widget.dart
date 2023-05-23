import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Widget'),
        centerTitle: true,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
          Image.asset('assets/images/img1.jpg'),
        ],
      ),
      
    );
  }
}
