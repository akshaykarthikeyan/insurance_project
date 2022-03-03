import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/create.dart';
import 'package:insurance_project/screens/form.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:page_transition/page_transition.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  void setState(Null Function() param0) {}

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  bool _validate = false;
  var ft1 = TextEditingController();
  var ft2 = TextEditingController();
  String it1 = '';
  String it2 = '';

  @override
  void dispose() {
    ft1.dispose();
    super.dispose();
  }

  OtpFieldController otpController = OtpFieldController();
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
                      child: Create()));
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
                        child: Image.asset('assets/images/Group 1381@3x.png')),
                    const SizedBox(
                      width: double.infinity,
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight / 9,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Verification',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 28.0,
                                      color: const Color(0xff454D5D))),
                              const SizedBox(
                                width: double.infinity,
                                height: 10,
                              ),
                              Text('Enter the OTP sent to the given number',
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
                    Container(
                      width: screenWidth / 1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(20), //border corner radius
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffEBF2FC),
                            spreadRadius: 10,
                            blurRadius: 20,
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              width: screenWidth / 1.2,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OTPTextField(
                                          controller: otpController,
                                          length: 4,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          textFieldAlignment:
                                              MainAxisAlignment.spaceAround,
                                          fieldWidth: 55,
                                          fieldStyle: FieldStyle.underline,
                                          outlineBorderRadius: 15,
                                          style: GoogleFonts.varelaRound(
                                              fontStyle: FontStyle.normal,
                                              fontSize: 20.0,
                                              color: Colors.black),
                                          onChanged: (pin) {
                                            print("Changed: " + pin);
                                          },
                                          onCompleted: (pin) {
                                            print("Completed: " + pin);
                                          }),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight / 12,
                            width: screenWidth / 1.2,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: TextButton(
                                  onPressed: () {
                                    print(it1);
                                    ft1.clear();
                                    setState(() {
                                      ft1.text.isEmpty
                                          ? _validate = true
                                          : _validate = false;
                                    });
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType
                                                .rightToLeftWithFade,
                                            child: const FormPage()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xff3AD29F),
                                  ),
                                  child: Text('Continue',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.0,
                                          color: Colors.white))),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight / 90,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 44,
                    ),
                    InkWell(
                      child: Text('Re-Send Code',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: const Color(0xff30C7B8))),
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
