import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/login-signup.dart';
import 'package:transition/transition.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 10.0,
      width: isActive ? 15.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff3AD29F) : Color(0xffD3D3D3),
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color: Color(0xffFFFFFF),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: screenHeight / 1.3,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text('GET STARTED',
                                  style: GoogleFonts.poppins(
                                      fontSize: 28,
                                      color: const Color(0xff454D5D),
                                      fontWeight: FontWeight.w600)),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Group 961@3x.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            const SizedBox(height: 60.0),
                            Container(
                              child: Center(
                                child: Text(
                                  'Car Insurance',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Color(0xff454D5D),
                                      letterSpacing: 0.1,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios  undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios auvhin  undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios auvhin ibu undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text('GET STARTED',
                                  style: GoogleFonts.poppins(
                                      fontSize: 28,
                                      color: Color(0xff454D5D),
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Group 711@3x.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 60.0),
                            Container(
                              child: Center(
                                child: Text(
                                  'Life Insurance',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Color(0xff454D5D),
                                      letterSpacing: 0.1,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios  undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios auvhin  undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios auvhin ibu undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text('GET STARTED',
                                  style: GoogleFonts.poppins(
                                      fontSize: 28,
                                      color: Color(0xff454D5D),
                                      fontWeight: FontWeight.w600)),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Group 1371@3x.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 60.0),
                            Container(
                              child: Center(
                                child: Text(
                                  'Home Insurance',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Color(0xff454D5D),
                                      letterSpacing: 0.1,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios  undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios auvhin  undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'afios auvhin ibu undwinidnv ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff454D5D),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Skip>>',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff3AD29F),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 25.0),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 10.0, width: screenWidth / 3),
                  Container(height: 10.0, width: screenWidth / 3),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        Transition(
                            child: LoginScreen(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 50.0),
                        child: Text(
                          'Skip>>',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF3AD29F),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Text(''),
    );
  }
}
