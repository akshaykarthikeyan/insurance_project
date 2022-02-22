import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/create.dart';
import 'package:insurance_project/screens/registration.dart';
import 'package:page_transition/page_transition.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  void setState(Null Function() param0) {}

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
                      child: const Registration()));
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
                        child: Image.asset('assets/images/Group 1383@3x.png')),
                    const SizedBox(
                      width: double.infinity,
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight / 9,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Your Account',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.0,
                                      color: const Color(0xff454D5D))),
                              const SizedBox(
                                width: double.infinity,
                                height: 10,
                              ),
                              Text(
                                  'Username and password of the account you have registered',
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
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
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
                            SizedBox(
                              height: screenHeight / 90,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: screenWidth / 1.2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  color:
                                                      const Color(0xffECF4FF),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Text(
                                                      'Email:example@gmail.com',
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                          color: Color(
                                                              0xffA8A8A8)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(7.0),
                                                child: Image.asset(
                                                    'assets/images/shield-fill-check@3x.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 5.0,
                                  thickness: 1,
                                  indent: 20,
                                  endIndent: 20,
                                  color: Colors.black26,
                                ),
                                SizedBox(
                                  width: screenWidth / 1.2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  color:
                                                      const Color(0xffECF4FF),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Text(
                                                        'Password:ExamplePassword',
                                                        style: TextStyle(
                                                            fontSize: 15.0,
                                                            color: Color(
                                                                0xffA8A8A8))),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(7.0),
                                                child: Image.asset(
                                                    'assets/images/shield-fill-check@3x.png'),
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
                              height: screenHeight / 90,
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
                                      type: PageTransitionType.rightToLeft,
                                      child: Create()));
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
