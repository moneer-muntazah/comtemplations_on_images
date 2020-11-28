import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'simple_image.dart';
import 'image_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    print("width: ${mediaSize.width}");
    print("height: ${mediaSize.height}");
    return Scaffold(
      // appBar: AppBar(),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       FlatButton(
      //         color: Colors.orange,
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => SimpleImage()));
      //         },
      //         child: Text("SimpleImage"),
      //       ),
      //       FlatButton(
      //         color: Colors.orange,
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => ImageListOne()));
      //         },
      //         child: Text("ImageGridOne"),
      //       ),
      //       FlatButton(
      //         color: Colors.orange,
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => ImageListTwo()));
      //         },
      //         child: Text("ImageGridTwo"),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Image.asset(
      //     "assets/boy.jpg",
      //     width: 360,
      //     height: 640,
      //     cacheWidth: 100,
      //     // cacheHeight: 320,
      //   ),
      // ),
      body: Center(
        child: ExtendedImage.asset(
          "assets/body.jpg",
          width: 360,
          height: 650,
          cacheWidth: 100,
          // cacheHeight: 320,
        ),
      ),
    );
  }
}
