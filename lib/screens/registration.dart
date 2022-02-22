import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/account.dart';
import 'package:insurance_project/screens/setting.dart';
import 'package:page_transition/page_transition.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  void setState(Null Function() param0) {}

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController dateinput = TextEditingController();
  bool _validate = false;
  var ft1 = TextEditingController();
  var ft2 = TextEditingController();
  String it1 = '';
  String it2 = '';

  @override
  void dispose() {
    ft1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      child: Setting()));
            },
            child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Container(
              color: Colors.white,
              height: screenHeight / 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight / 25,
                    ),
                    SizedBox(
                        height: screenHeight / 3,
                        width: screenWidth / 1.5,
                        child: Image.asset('assets/images/Group 1382@3x.png')),
                    const SizedBox(
                      width: double.infinity,
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight / 6.5,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text('You Registered',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.0,
                                      color: const Color(0xff454D5D))),
                              Text('Sucessfully',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.0,
                                      color: const Color(0xff454D5D))),
                              const SizedBox(
                                width: double.infinity,
                                height: 10,
                              ),
                              Text(
                                  'You can now enter the app by click on continue or skip',
                                  style: GoogleFonts.poppins(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0,
                                      color: const Color(0xff454D5D))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: screenHeight / 12,
                          width: screenWidth / 1.2,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextButton(
                                onPressed: () {
                                  print(it1);
                                  print(dateinput);
                                  ft1.clear();
                                  dateinput.clear();
                                  setState(() {
                                    ft1.text.isEmpty
                                        ? _validate = true
                                        : _validate = false;
                                    dateinput.text.isEmpty
                                        ? _validate = true
                                        : _validate = false;
                                  });
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType
                                              .rightToLeftWithFade,
                                          child: Account()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff3AD29F),
                                ),
                                child: Text('Continue',
                                    style: GoogleFonts.poppins(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15.0,
                                        color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Text('Skip',
                          style: GoogleFonts.poppins(
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0,
                              color: Color(0xff30C7B8))),
                    ),
                    const SizedBox(height: 60.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
