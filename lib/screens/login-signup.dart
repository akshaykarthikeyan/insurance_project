import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/account.dart';
import 'package:insurance_project/screens/create.dart';
import 'package:transition/transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Color(0xffFFFFFF),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight / 9,
                  ),
                  Image.asset(
                    'assets/images/Group 1379@3x.png',
                    height: 230,
                  ),
                  SizedBox(
                    height: screenHeight / 10,
                  ),
                  Container(
                    child: Text(
                      'Lets Start',
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Color(0xff454D5D),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'afiosa uvhuahfu',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color(0xff454D5D),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'afios auvhu ahfuaevb',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color(0xff454D5D),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'afios auvhu ahfuq beibqeibf',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color(0xff454D5D),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: screenWidth / 2.5,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Create()));
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff3AD29F), elevation: 0),
                                child: Text(
                                  'SIGNUP',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffFFFFFF), fontSize: 20),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: screenWidth / 2.5,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        Transition(
                                            child: Account(),
                                            transitionEffect: TransitionEffect
                                                .RIGHT_TO_LEFT));
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffFFFFFF),
                                    elevation: 0,
                                    side: BorderSide(
                                        width: 1.0, color: Color(0xff3AD29F))),
                                child: Text(
                                  'LOGIN',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff3AD29F), fontSize: 20),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
