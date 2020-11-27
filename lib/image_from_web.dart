/// source: Flutter Complete Reference by Alberto Miloa

import 'package:flutter/material.dart';

class ImageFromWeb extends StatelessWidget {
  final String url;
  const ImageFromWeb(this.url);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: 1,
        duration: Duration(seconds: 5),
        curve: Curves.easeOut,
        child: Image.network(
          url,
          // loadingBuilder: (context, child, progress) {
          //   if (progress == null) return child;
          //   var percentage = 0.0;
          //   final total = progress.expectedTotalBytes;
          //   if (total != null) {
          //     final current = progress.cumulativeBytesLoaded;
          //     percentage = current / total;
          //   }
          //   return Center(
          //     child: CircularProgressIndicator(value: percentage),
          //   );
          // },
          // frameBuilder: (context, child, _, loaded) {
          //   print(loaded);
          //   if (loaded) return child;
          //   return const Text("Loading...");
          // },
          frameBuilder: (BuildContext context, Widget child, int frame,
              bool wasSynchronouslyLoaded) {
            // print(wasSynchronouslyLoaded);
            // if (frame == null) return const Text("Loading...");
            // if (wasSynchronouslyLoaded) return child;
            // return AnimatedOpacity(
            //   opacity: frame == null ? 0 : 1,
            //   duration: Duration(seconds: 5),
            //   curve: Curves.easeOut,
            //   child: child,
            // );
            return child;
          },
        ),
      ),
    );
  }
}
