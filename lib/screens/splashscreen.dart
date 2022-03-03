import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/onboarding.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MaterialApp(
    home: MyPage(),
  ));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SplashScreenView(
            navigateRoute: OnboardingScreen(),
            duration: 100,
            imageSize: 100,
            imageSrc: "assets/policyp.jpg",
            text: ("POLICY PARTNER"),
            textStyle: GoogleFonts.poppins(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Color(0xff454D5D)),
            backgroundColor: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
