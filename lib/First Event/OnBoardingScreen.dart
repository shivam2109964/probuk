import 'package:flutter/material.dart';
import 'package:probuk/First%20Event/IntroOne.dart';
import 'package:probuk/First%20Event/IntroThree.dart';
import 'package:probuk/First%20Event/IntroTwo.dart';
import 'package:probuk/Home/HomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  //Keep Track of the last page
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) => setState(
              () {
                onlastpage = (index == 2);
              },
            ),
            children: const [
              IntroOne(),
              IntroTwo(),
              IntroThree(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Skip
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text("Skip")),
                SmoothPageIndicator(
                    controller: _controller, count: 3, effect: WormEffect()),

                //Next
                onlastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        },
                        child: const Text("Done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                        child: const Text("Next"),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
