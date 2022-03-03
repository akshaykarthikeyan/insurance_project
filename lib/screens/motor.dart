import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_project/screens/home.dart';
import 'package:insurance_project/screens/motor_insurance.dart';
import 'package:page_transition/page_transition.dart';

class Motor extends StatefulWidget {
  const Motor({Key? key}) : super(key: key);

  void setState(Null Function() param0) {}

  @override
  _MotorState createState() => _MotorState();
}

class _MotorState extends State<Motor> {
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset('assets/images/Group 1395@3x.png',
                  height: 40, width: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/Group 1396@3x.png',
                  height: 40, width: 40),
            )
          ],
          backgroundColor: Color(0xffF8F8F8),
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      child: const Home()));
            },
            child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Container(
              color: const Color(0xffF8F8F8),
              height: screenHeight / 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '  Motor                         ',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 36.0,
                                        color: const Color(0xff3AD29F)),
                                  ),
                                  Text(
                                    '  Insurance                         ',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 36.0,
                                        color: const Color(0xff454D5D)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      'Motor Insurance is a type of insurance policy which covers your vehicles from potential risks financially.',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.0,
                                          color: const Color(0xff454D5D)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            10), //border corner radius
                                      ),
                                      height: screenHeight / 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: SvgPicture.asset(
                                          'assets/images/a0e4e70155ee88b7d0da1d70d91de6bf.svg',
                                          color: const Color(0xff3AD29F),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: screenWidth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xff0000000f),
                                      spreadRadius: 10,
                                      blurRadius: 20,
                                    ),
                                  ], //border corner radius
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 7.0,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          MotorInsurance()),
                                                );
                                              },
                                              child: Container(
                                                color: Color(0xffECF4FF),
                                                height: screenHeight / 7,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: SizedBox(
                                                        height:
                                                            screenHeight / 18,
                                                        child: Image.asset(
                                                            'assets/images/Group 1545@3x.png'),
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text(
                                                          'Auto-Rikshaw',
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                        ),
                                                        Text(
                                                          'Tvs king,etc',
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      12.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1546@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Taxi/Cab',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Etios, Tata Sumo,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1547@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'School Bus',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1548@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Tipper',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1549@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Bus',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1550@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Tipper',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1551@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Agriculture Tractor',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1552@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Electrical Auto',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Etios, Tata Sumo,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1553@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Truck',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1554@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Pickup/Delivery van',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1555@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Tempo & Traveller',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 7,
                                              color: Color(0xffECF4FF),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: SizedBox(
                                                      height: screenHeight / 18,
                                                      child: Image.asset(
                                                          'assets/images/Group 1556@3x.png'),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Goods Tractor',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      Text(
                                                        'Tvs king,etc',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12.0),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 7.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Motor insurance is a unique insurance policy meant for '
                            'vehicle owners to protect them from incurring any financial'
                            ' losses that may arise due to damage or theft of the vehicle.'
                            'Whether you have a private car, a commercial vehicle,'
                            'or a two-wheeler, you can purchase a motor insurance policy',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontStyle: FontStyle.normal,
                                fontSize: 9.0,
                                color: const Color(0xff454D5D)),
                          ),
                        ],
                      ),
                    ),
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
