import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/registration.dart';
import 'package:insurance_project/screens/verification.dart';
import 'package:page_transition/page_transition.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late String firstname, lastname, email;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRightWithFade,
                    child: const Verification()));
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
              child: Form(
                key: _formkey,
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
                        padding: EdgeInsets.all(8.0),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          validator: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter first name';
                                            }
                                            return null;
                                          },
                                          onSaved: (String? value) {
                                            firstname = value!;
                                          },
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide: BorderSide(),
                                              ),
                                              fillColor:
                                                  const Color(0xffECF4FF),
                                              filled: true,
                                              isDense: true,
                                              hintText: 'first name',
                                              hintStyle: const TextStyle(
                                                  fontSize: 15.0,
                                                  color: Color(0xffA8A8A8)),
                                              counterStyle:
                                                  GoogleFonts.varelaRound(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontSize: 15.0,
                                                      color: const Color(
                                                          0xffA8A8A8))),
                                        ),
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
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter last name';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      lastname = value!;
                                    },
                                    decoration: InputDecoration(
                                        fillColor: const Color(0xffECF4FF),
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(),
                                        ),
                                        isDense: true,
                                        hintText: 'last name',
                                        hintStyle: const TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffA8A8A8)),
                                        counterStyle: GoogleFonts.varelaRound(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15.0,
                                            color: const Color(0xffA8A8A8))),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter an existing email';
                                      }
                                      if (!RegExp(
                                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                          .hasMatch(value)) {
                                        return 'Please a valid Email';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      email = value!;
                                    },
                                    decoration: InputDecoration(
                                        fillColor: const Color(0xffECF4FF),
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(),
                                        ),
                                        isDense: true,
                                        hintText: 'e-mail',
                                        hintStyle: const TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffA8A8A8)),
                                        counterStyle: GoogleFonts.varelaRound(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15.0,
                                            color: const Color(0xffA8A8A8))),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: password,
                                    keyboardType: TextInputType.text,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please a Enter Password';
                                      }
                                      if (!RegExp(r'^.{4,}$').hasMatch(value)) {
                                        return 'Please enter a valid password(more than 2 characters';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        fillColor: const Color(0xffECF4FF),
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(),
                                        ),
                                        isDense: true,
                                        hintText: 'password',
                                        hintStyle: const TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffA8A8A8)),
                                        counterStyle: GoogleFonts.varelaRound(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15.0,
                                            color: const Color(0xffA8A8A8))),
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 1.0,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black12,
                              ),
                              SizedBox(
                                width: screenWidth / 1.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    controller: confirmpassword,
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please re-enter password';
                                      }
                                      print(password.text);

                                      print(confirmpassword.text);

                                      if (password.text !=
                                          confirmpassword.text) {
                                        return "Password does not match";
                                      }

                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(),
                                        ),
                                        fillColor: const Color(0xffECF4FF),
                                        filled: true,
                                        isDense: true,
                                        hintText: 'confirm password',
                                        hintStyle: const TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffA8A8A8)),
                                        counterStyle: GoogleFonts.varelaRound(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15.0,
                                            color: const Color(0xffA8A8A8))),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 12,
                      width: screenWidth / 1.2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const Registration()));
                              if (_formkey.currentState!.validate()) {
                                print("successful");
                                return;
                              } else {
                                print("UnSuccessfull");
                              }
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
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(height: 15.0),
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
