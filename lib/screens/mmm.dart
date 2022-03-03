import 'package:flutter/material.dart';
import 'package:insurance_project/pages/page_1.dart';
import 'package:insurance_project/pages/page_2.dart';
import 'package:insurance_project/pages/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  buildItem(BuildContext context, int index) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // page view
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView(
            controller: _controller,
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),

        // dot indicators
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: const JumpingDotEffect(
            activeDotColor: Color(0xff3AD29F),
            dotColor: Colors.black12,
            dotHeight: 10,
            dotWidth: 20,
            spacing: 20,
            //verticalOffset: 50,
            jumpScale: 1.5,
          ),
        ),
      ],
    );
  }
}
