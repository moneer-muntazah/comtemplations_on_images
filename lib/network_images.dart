import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class NetworkImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: List.generate(
        //       10,
        //       (i) => MyExtendImage(
        //         'https://www.placeimg.com/1600/${1000 - i}',
        //       ),
        //     ),
        //   ),
        // ),
        child: ListView.builder(
            itemCount: 10,
            cacheExtent: 2000,
            itemBuilder: (ctx, i) {
              print(i);
              return MyExtendImage('https://www.placeimg.com/1600/${1000 - i}');
            }),
      ),
    );
  }
}

class MyExtendImage extends ExtendedImage {
  MyExtendImage(String url)
      : super.network(
          url,
          cache: false,
          enableLoadState: false,
          enableMemoryCache: true,
          clearMemoryCacheWhenDispose: true,
          clearMemoryCacheIfFailed: true,
          width: 400,
          height: 200,
          cacheWidth: 400,
          cacheHeight: 250,
        );
}
