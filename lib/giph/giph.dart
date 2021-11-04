import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:learning_dashboard/colors.dart';
import 'package:learning_dashboard/giph/giph_supplier.dart';
import 'package:learning_dashboard/text_styles.dart';
import 'package:learning_dashboard/giph/giphy_gif.dart';
import 'package:url_launcher/url_launcher.dart';

enum GifType { positive, negative, watchout, almost, learn }

class Giph extends StatelessWidget {
  Future future;

  factory Giph.fromType(GifType gifType) {
    switch (gifType) {
      case GifType.positive:
        return Giph.positive();
        break;
      case GifType.negative:
        return Giph.negative();
        break;
      case GifType.watchout:
        return Giph.watchout();
        break;
      case GifType.almost:
        return Giph.almost();
        break;
      case GifType.learn:
        return Giph.learn();
        break;
    }

    return Giph.positive();
  }

  Giph.positive() {
    future = GiphSupplier().getRandomPositive();

  }

  Giph.watchout() {
    future = GiphSupplier().getRandomWatchout();
  }

  Giph.negative() {
    future = GiphSupplier().getRandomNegative();
  }

  Giph.almost() {
    future = GiphSupplier().getRandomAlmost();
  }

  Giph.learn() {
    future = GiphSupplier().getRandomLearn();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          GiphyGif data = snapshot.data;

          double aspectRatio =
              double.parse(data.data?.images?.original?.width) /
                  double.parse(data.data?.images?.original?.height);

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: aspectRatio > 0
                            ? constraints.maxHeight * aspectRatio
                            : constraints.maxWidth,
                        height: aspectRatio > 0
                            ? constraints.maxWidth / aspectRatio
                            : constraints.maxHeight,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(data.data.images.original.webp,
                                fit: BoxFit.contain),
                            Positioned(
                              child: GestureDetector(
                                onTap: () => launch(data.data.sourcePostUrl),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 1, right: 1),
                                  child: Text(
                                    'Powered by Giphy',
                                    style: AppTextStyles.giphyCredsTextStyle()
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                              right: 1,
                              bottom: 1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return SpinKitFadingCircle(
            color: AppColors.red,
            size: 20.0,
          );
        }
      },
    );
  }
}
