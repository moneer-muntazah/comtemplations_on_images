import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/services.dart';

class ImageFromAsset extends StatefulWidget {
  final String uri;
  const ImageFromAsset(this.uri);

  @override
  _ImageFromAssetState createState() => _ImageFromAssetState();
}

class _ImageFromAssetState extends State<ImageFromAsset> {
  AssetImage imageAsset;

  @override
  void initState() {
    super.initState();
    imageAsset = imageAsset = AssetImage(widget.uri);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        height: 100,
        width: 100,
        image: imageAsset,
      ),
    );
    // return Center(
    //   child: Image.asset(
    //     uri,
    //     cacheWidth: 100,
    //     cacheHeight: 100,
    //     height: 100,
    //     width: 100,
    //   ),
    // );
    // return Center(
    //   child: ExtendedImage(
    //     image: AssetImage(uri),
    //     height: 100,
    //     width: 100,
    //     enableMemoryCache: false,
    //     // clearMemoryCacheWhenDispose: false,
    //   ),
    // );
  }

  @override
  void dispose() {
    print("dispose");
    // imageAsset.evict();
    super.dispose();
  }
}
