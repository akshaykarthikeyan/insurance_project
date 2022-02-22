import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/registration.dart';
import 'package:insurance_project/screens/verification.dart';
import 'package:page_transition/page_transition.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  void setState(Null Function() param0) {}

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _validate = false;
  var ft1 = TextEditingController();
  var ft2 = TextEditingController();
  var ft3 = TextEditingController();
  var ft4 = TextEditingController();
  var ft5 = TextEditingController();
  String it1 = '';
  String it2 = '';
  String it3 = '';
  String it4 = '';
  String it5 = '';
  @override
  void dispose() {
    ft1.dispose();
    ft2.dispose();
    ft3.dispose();
    ft4.dispose();
    ft5.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
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
                      child: Verification()));
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
                        height: screenHeight / 3,
                        width: screenWidth / 1.5,
                        child: Image.asset('assets/images/Group 1383@3x.png')),
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight / 6.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Set your ',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.0,
                                      color: const Color(0xff454D5D))),
                              Text('user id & password',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.0,
                                      color: const Color(0xff454D5D))),
                              const SizedBox(
                                width: double.infinity,
                                height: 5,
                              ),
                              Text('Enter the Username and password',
                                  style: GoogleFonts.poppins(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0,
                                      color: const Color(0xff454D5D))),
                            ],
                          ),
                        ),
                      ),
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
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight / 60,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight / 200,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: TextFormField(
                                                style: GoogleFonts.varelaRound(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 20.0,
                                                    color: const Color(
                                                        0xff454D5D)),
                                                controller: ft1,
                                                onChanged: (text) {
                                                  it1 = text;
                                                },
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                    fillColor:
                                                        const Color(0xffECF4FF),
                                                    filled: true,
                                                    border: InputBorder.none,
                                                    isDense: true,
                                                    hintText: 'first name',
                                                    hintStyle: const TextStyle(
                                                        fontSize: 15.0,
                                                        color:
                                                            Color(0xffA8A8A8)),
                                                    counterStyle:
                                                        GoogleFonts.varelaRound(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 15.0,
                                                            color: const Color(
                                                                0xffA8A8A8))),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Phone number (+xx xxx-xxx-xxx)';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight / 200,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: TextFormField(
                                                style: GoogleFonts.varelaRound(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 20.0,
                                                    color: const Color(
                                                        0xff454D5D)),
                                                controller: ft2,
                                                onChanged: (text) {
                                                  it2 = text;
                                                },
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                    fillColor:
                                                        const Color(0xffECF4FF),
                                                    filled: true,
                                                    border: InputBorder.none,
                                                    isDense: true,
                                                    hintText: 'last name',
                                                    hintStyle: const TextStyle(
                                                        fontSize: 15.0,
                                                        color:
                                                            Color(0xffA8A8A8)),
                                                    counterStyle:
                                                        GoogleFonts.varelaRound(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 15.0,
                                                            color: const Color(
                                                                0xffA8A8A8))),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Phone number (+xx xxx-xxx-xxx)';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight / 200,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: TextFormField(
                                                style: GoogleFonts.varelaRound(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 20.0,
                                                    color: const Color(
                                                        0xff454D5D)),
                                                controller: ft3,
                                                onChanged: (text) {
                                                  it3 = text;
                                                },
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: InputDecoration(
                                                    fillColor:
                                                        const Color(0xffECF4FF),
                                                    filled: true,
                                                    border: InputBorder.none,
                                                    isDense: true,
                                                    hintText: 'e-mail',
                                                    hintStyle: const TextStyle(
                                                        fontSize: 15.0,
                                                        color:
                                                            Color(0xffA8A8A8)),
                                                    counterStyle:
                                                        GoogleFonts.varelaRound(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 15.0,
                                                            color: const Color(
                                                                0xffA8A8A8))),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Phone number (+xx xxx-xxx-xxx)';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight / 200,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: TextFormField(
                                                obscureText: _isObscure,
                                                style: GoogleFonts.varelaRound(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 20.0,
                                                    color: const Color(
                                                        0xff454D5D)),
                                                controller: ft4,
                                                onChanged: (text) {
                                                  it4 = text;
                                                },
                                                decoration: InputDecoration(
                                                    fillColor:
                                                        const Color(0xffECF4FF),
                                                    filled: true,
                                                    border: InputBorder.none,
                                                    isDense: true,
                                                    hintText: 'password',
                                                    hintStyle: const TextStyle(
                                                        fontSize: 15.0,
                                                        color:
                                                            Color(0xffA8A8A8)),
                                                    suffixIcon: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _isObscure =
                                                              !_isObscure;
                                                        });
                                                      },
                                                      child: Icon(
                                                        _isObscure
                                                            ? Icons.visibility
                                                            : Icons
                                                                .visibility_off,
                                                        color: const Color(
                                                            0xffA8A8A8),
                                                      ),
                                                    ),
                                                    counterStyle:
                                                        GoogleFonts.varelaRound(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 15.0,
                                                            color: const Color(
                                                                0xffA8A8A8))),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Enter Password';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: screenHeight / 200,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: TextFormField(
                                                style: GoogleFonts.varelaRound(
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 20.0,
                                                    color: const Color(
                                                        0xff454D5D)),
                                                controller: ft5,
                                                onChanged: (text) {
                                                  it5 = text;
                                                },
                                                keyboardType: TextInputType
                                                    .visiblePassword,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                    suffixIcon: GestureDetector(
                                                      onTap: () async {
                                                        setState(() {
                                                          _isObscure =
                                                              !_isObscure;
                                                        });
                                                      },
                                                      child: Icon(
                                                        _isObscure
                                                            ? Icons.visibility
                                                            : Icons
                                                                .visibility_off,
                                                        color: const Color(
                                                            0xffA8A8A8),
                                                      ),
                                                    ),
                                                    fillColor:
                                                        const Color(0xffECF4FF),
                                                    filled: true,
                                                    border: InputBorder.none,
                                                    isDense: true,
                                                    hintText:
                                                        'confirm password',
                                                    hintStyle: const TextStyle(
                                                        fontSize: 15.0,
                                                        color:
                                                            Color(0xffA8A8A8)),
                                                    counterStyle:
                                                        GoogleFonts.varelaRound(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 15.0,
                                                            color: const Color(
                                                                0xffA8A8A8))),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Confirm Password';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight / 60,
                          ),
                        ],
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
                              print(it2);
                              print(it3);
                              print(it4);
                              print(it5);
                              ft1.clear();
                              ft2.clear();
                              ft3.clear();
                              ft4.clear();
                              ft5.clear();
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
                                      child: Registration()));
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
                    const SizedBox(height: 5.0),
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
