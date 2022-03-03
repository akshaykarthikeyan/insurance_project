import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/verification.dart';
import 'package:page_transition/page_transition.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  void setState(Null Function() param0) {}

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  late String phone;
  TextEditingController dateinput = TextEditingController();
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

  late String _radioValue; //Initial definition of radio button value
  late String choice;
  @override
  void initStates() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
                        child: Image.asset('assets/images/Group 1380@3x.png')),
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
                              Text('Create Account',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 28.0,
                                      color: const Color(0xff454D5D))),
                              const SizedBox(
                                width: double.infinity,
                                height: 10,
                              ),
                              Text(
                                  'Enter the phone number for creating an account',
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
                      padding: const EdgeInsets.all(8.0),
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
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight / 80,
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
                                          child: Form(
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: TextFormField(
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    10),
                                              ],
                                              style: GoogleFonts.poppins(
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 20.0,
                                                  color: Colors.black),
                                              controller: ft1,
                                              onChanged: (text) {
                                                it1 = text;
                                              },
                                              keyboardType: TextInputType.phone,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  isDense: true,
                                                  prefixIcon: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            11.0),
                                                    child: Text(
                                                      '+91',
                                                      style: GoogleFonts
                                                          .varelaRound(
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontSize: 20.0,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                  ),
                                                  hintText: ' Phone number',
                                                  hintStyle: const TextStyle(
                                                      fontSize: 20.0,
                                                      color: Color(0xff454D5D)),
                                                  counterStyle:
                                                      GoogleFonts.varelaRound(
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize: 20.0,
                                                          color: Colors.white)),
                                              validator: (String? value) {
                                                if (value!.length != 10) {
                                                  return 'Please enter 10 digit of your mobile number';
                                                }
                                                return null;
                                              },
                                              onSaved: (String? value) {
                                                phone = value!;
                                              },
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
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
                              height: 10.0,
                              thickness: 1,
                              indent: 40,
                              endIndent: 40,
                              color: Colors.black26,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    20), //border corner radius
                              ),
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
                                              child: const Verification()));
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
