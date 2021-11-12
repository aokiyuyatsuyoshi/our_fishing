import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:untitled1/widget/posting_floating_button.dart';

import 'carousel_widget.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://illust.download/wp-content/uploads/2017/11/background137.jpg'),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _AnimationTopNewArrivalNewsText(),
                _ShimmerNewArrivalText(),
                Divider(
                  thickness: 1.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: CarouselWithIndicatorDemo(),
                ),
                _AnimationMiddleNewArrivalNewsText(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "みんなの投稿一覧",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: postFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget _AnimationTopNewArrivalNewsText() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText('New Arrival News'),
          WavyAnimatedText('新着のニュース'),
        ],
        isRepeatingAnimation: true,
        totalRepeatCount: 100,
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  );
}

Widget _ShimmerNewArrivalText() {
  return Shimmer.fromColors(
    baseColor: Colors.blue,
    highlightColor: Colors.yellow,
    child: Text(
      '新着のニュース',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

///三項演算子にすると良いかも?
Widget _AnimationMiddleNewArrivalNewsText() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 15.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText('New Arrival News'),
          WavyAnimatedText('新着のニュース'),
        ],
        isRepeatingAnimation: true,
        totalRepeatCount: 100,
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  );
}
