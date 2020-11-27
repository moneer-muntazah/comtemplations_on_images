import 'package:flutter/material.dart';
import 'image_from_web.dart';
import 'image_from_asset.dart';

class SimpleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // child: ImageFromWeb("https://www.placeimg.com/1600/1000"),
        child: ImageFromAsset("assets/something.png"),
        // child: Image.network(
        //   'https://www.placeimg.com/1600/1000',
        //   width: 320,
        //   height: 200,
        //   // cacheWidth: (320 * devicePixelRatio).toInt(),
        //   // cacheHeight: (200 * devicePixelRatio).toInt(),
        // ),
      ),
    );
  }
}
