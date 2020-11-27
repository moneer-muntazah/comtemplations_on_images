import 'package:flutter/material.dart';
import 'image_from_web.dart';
import 'image_from_asset.dart';

class ImageListOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, i) {
            if (i == 0) return ImageFromAsset("assets/one.jpg");
            if (i == 1) return ImageFromAsset("assets/two.jpg");
            if (i == 2) return ImageFromAsset("assets/three.jpg");
            if (i == 3) return ImageFromAsset("assets/four.jpg");
            return Container();
          }),
    );
  }
}

class ImageListTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, i) {
            if (i == 4) return ImageFromAsset("assets/five.jpg");
            if (i == 5) return ImageFromAsset("assets/six.png");
            if (i == 6) return ImageFromAsset("assets/seven.jpg");
            if (i == 7) return ImageFromAsset("assets/eight.jpg");
            if (i == 8) return ImageFromAsset("assets/nine.jpg");
            return Container();
          }),
    );
  }
}
