import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:insurance_project/screens/motor.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

class MotorInsurance extends StatefulWidget {
  const MotorInsurance({Key? key}) : super(key: key);

  @override
  _MotorInsuranceState createState() => _MotorInsuranceState();
}

class AlertDialogg extends StatefulWidget {
  const AlertDialogg({
    Key? key,
  }) : super(key: key);

  @override
  State<AlertDialogg> createState() => _AlertDialoggState();
}

class _AlertDialoggState extends State<AlertDialogg> {
  List<String> _checked = [];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      actions: <Widget>[
        Column(
          children: [
            SizedBox(
              height: screenHeight / 8,
              width: screenWidth / 2,
              child: Image.asset('assets/images/Group 1565@3x.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Did you make a claim in your existing policy?',
                  style: GoogleFonts.poppins(
                      fontSize: 13.0, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight / 25,
                    width: screenWidth / 4,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff3AD29F),
                          Color(0xff30C7B8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: Text('Cancel',
                          style: GoogleFonts.poppins(
                              fontSize: 13.0, color: Colors.white)),
                    ),
                  ),
                  Container(
                    height: screenHeight / 25,
                    width: screenWidth / 4,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff3AD29F),
                          Color(0xff30C7B8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const Motor()));
                      },
                      child: Text('OK',
                          style: GoogleFonts.poppins(
                              fontSize: 13.0, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Select NCB give in Your existing policy',
                  style: GoogleFonts.poppins(
                      fontSize: 12.0, fontWeight: FontWeight.w600)),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CheckboxGroup(
                        labels: const [
                          '00',
                          '35',
                        ],
                        checked: _checked,
                        onChange: (bool isChecked, String label, int index) =>
                            print(
                                "isChecked: $isChecked   label: $label  index: $index"),
                        onSelected: (final selected) => setState(() {
                          if (selected.length > 1) {
                            selected.removeAt(0);
                            print('selected length  ${selected.length}');
                          } else {
                            print("only one");
                          }
                          _checked = selected;
                        }),
                      ),
                      CheckboxGroup(
                        labels: const [
                          '20',
                          '45',
                        ],
                        checked: _checked,
                        onChange: (bool isChecked, String label, int index) =>
                            print(
                                "isChecked: $isChecked   label: $label  index: $index"),
                        onSelected: (final selected) => setState(() {
                          if (selected.length > 1) {
                            selected.removeAt(0);
                            print('selected length  ${selected.length}');
                          } else {
                            print("only one");
                          }
                          _checked = selected;
                        }),
                      ),
                      CheckboxGroup(
                        labels: const [
                          '25',
                          '50',
                        ],
                        checked: _checked,
                        onChange: (bool isChecked, String label, int index) =>
                            print(
                                "isChecked: $isChecked   label: $label  index: $index"),
                        onSelected: (final selected) => setState(() {
                          if (selected.length > 1) {
                            selected.removeAt(0);
                            print('selected length  ${selected.length}');
                          } else {
                            print("only one");
                          }
                          _checked = selected;
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _MotorInsuranceState extends State<MotorInsurance> {
  List<String> _checked = [];
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
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
                      child: Motor()));
            },
            child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Container(
              color: Color(0xffF8F8F8),
              height: screenHeight / 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                                  borderRadius: BorderRadius.circular(
                                      20), //border corner radius
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xff0000000d),
                                      spreadRadius: 10,
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: screenHeight / 50,
                                    ),
                                    Text(
                                      'Your chosen vehicle type is                                                      ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 15,
                                              color: const Color(0xffECF4FF),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: SizedBox(
                                                        height:
                                                            screenHeight / 25,
                                                        child: Image.asset(
                                                            'assets/images/Group 1545@3x.png'),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 6,
                                                    child: Text(
                                                      'Passenger Carrier',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 13.0),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              18.0),
                                                      child: Image.asset(
                                                          'assets/images/shield-fill-check@3x.png'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 15,
                                              color: Color(0xffECF4FF),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 5,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Text(
                                                        'Passenger Carrier',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 13.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              17.0),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                screenWidth / 6,
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            MotorInsurance()),
                                                              );
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              primary:
                                                                  const Color(
                                                                      0xff3AD29F),
                                                              onPrimary:
                                                                  Colors.white,
                                                              shape:
                                                                  StadiumBorder(),
                                                            ),
                                                            child: Text(
                                                              'Add',
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                      fontSize:
                                                                          15.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Enter the Date of registration of your vehicle                ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 15,
                                              color: Color(0xffECF4FF),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 7,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4.0),
                                                        child: TextField(
                                                          controller:
                                                              dateinput, //editing controller of this TextField
                                                          decoration:
                                                              const InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintText:
                                                                      "  DD / MM / YYYY" //label text of field
                                                                  ),
                                                          readOnly:
                                                              true, //set it true, so that user will not able to edit text
                                                          onTap: () async {
                                                            DateTime?
                                                                pickedDate =
                                                                await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        DateTime
                                                                            .now(),
                                                                    firstDate:
                                                                        DateTime(
                                                                            2000), //DateTime.now() - not to allow to choose before today.
                                                                    lastDate:
                                                                        DateTime(
                                                                            2101));

                                                            if (pickedDate !=
                                                                null) {
                                                              print(
                                                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                                              String
                                                                  formattedDate =
                                                                  DateFormat(
                                                                          'yyyy-MM-dd')
                                                                      .format(
                                                                          pickedDate);
                                                              print(
                                                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                                                              //you can implement different kind of Date Format here according to your requirement

                                                              setState(() {
                                                                dateinput.text =
                                                                    formattedDate; //set output date to TextField value.
                                                              });
                                                            } else {
                                                              print(
                                                                  "Date is not selected");
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 3,
                                                      child: CustomRadioButton(
                                                        padding: 2,
                                                        enableShape: true,
                                                        width: screenWidth / 5,
                                                        elevation: 0,
                                                        absoluteZeroSpacing:
                                                            false,
                                                        unSelectedColor:
                                                            Theme.of(context)
                                                                .canvasColor,
                                                        buttonLables: const [
                                                          'Brand New',
                                                        ],
                                                        buttonValues: const [
                                                          "BN",
                                                        ],
                                                        buttonTextStyle:
                                                            ButtonTextStyle(
                                                                selectedColor:
                                                                    Colors
                                                                        .white,
                                                                unSelectedColor:
                                                                    Colors
                                                                        .black,
                                                                textStyle:
                                                                    TextStyle(
                                                                        fontSize:
                                                                            10.0)),
                                                        radioButtonValue:
                                                            (value) {
                                                          print(value);
                                                        },
                                                        selectedColor:
                                                            Color(0xff3AD29F),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'What type of Insurance do you own currently?           ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 15,
                                              color: Color(0xffECF4FF),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  CustomRadioButton(
                                                    padding: 2,
                                                    enableShape: true,
                                                    width: screenWidth / 3,
                                                    elevation: 0,
                                                    absoluteZeroSpacing: false,
                                                    unSelectedColor:
                                                        Theme.of(context)
                                                            .canvasColor,
                                                    buttonLables: const [
                                                      'Third Party',
                                                      'Comprehensive',
                                                    ],
                                                    buttonValues: const [
                                                      "TP",
                                                      "C",
                                                    ],
                                                    buttonTextStyle:
                                                        ButtonTextStyle(
                                                            selectedColor:
                                                                Colors.white,
                                                            unSelectedColor:
                                                                Colors.black,
                                                            textStyle: TextStyle(
                                                                fontSize:
                                                                    13.0)),
                                                    radioButtonValue: (value) {
                                                      print(value);
                                                    },
                                                    selectedColor:
                                                        Color(0xff3AD29F),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Enter the registration RTO of your vehicle                     ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 15,
                                              color: const Color(0xffECF4FF),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child:
                                                        DropdownButtonFormField<
                                                            String>(
                                                      decoration:
                                                          const InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 25,
                                                                bottom: 11,
                                                                top: 11,
                                                                right: 25),
                                                      ),
                                                      icon: const Icon(Icons
                                                          .keyboard_arrow_down_outlined),
                                                      hint: Text(
                                                        'Select Vehicle RTO',
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: 13.0,
                                                        ),
                                                      ),
                                                      onChanged: (String) {
                                                        setState(() {});
                                                      },
                                                      items: <String>[
                                                        'Kerala',
                                                        'TamilNadu',
                                                        'Karnataka',
                                                        'Gujarat'
                                                      ].map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      (14.0))),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'What is your policy expiry date?                     ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(7.0),
                                            child: Container(
                                              height: screenHeight / 5,
                                              color: Color(0xffECF4FF),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: CupertinoDatePicker(
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                  initialDateTime:
                                                      DateTime.now(),
                                                  onDateTimeChanged:
                                                      (DateTime newDateTime) {},
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight / 50,
                                    ),
                                    SizedBox(
                                      height: screenHeight / 12,
                                      width: screenWidth / 1.5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xff4EB4F4),
                                                Color(0xff69CAFB),
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: TextButton(
                                              onPressed: () => showDialog<
                                                      String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialogg();
                                                  }),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.transparent,
                                                onSurface: Colors.transparent,
                                                shadowColor: Colors.transparent,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      'View Free Quotes             ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15.0,
                                                              color: Colors
                                                                  .white)),
                                                  const Icon(
                                                      Icons
                                                          .arrow_forward_outlined,
                                                      color: Colors.white),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
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
            ),
          ),
        ),
      ),
    );
  }
}
