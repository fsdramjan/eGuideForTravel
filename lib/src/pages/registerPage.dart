import 'dart:ui';

import 'package:country_list_pick/country_list_pick.dart';
import 'package:etravel_app/src/pages/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 50);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white54,
              HexColor('#36b8c5'),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            SizedBox(
              height: 30,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text('Register',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 30,
                        color: Colors.black.withOpacity(.70),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Follow the simple steps to register',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Bold',
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Email',
                    Icons.email,
                    false,
                    TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Password',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Password',
                    Icons.lock,
                    true,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text('Country',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          fontSize: 16,
                          color: Colors.black54,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white54,
                        ),
                      ),
                      child: countrySelect(Colors.black)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Phone',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Phone',
                    Icons.call,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('NID No',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    '(must) NID number',
                    Icons.document_scanner,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Gender',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Male/Female',
                    Icons.male,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Account Type',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Travel/ Guide/ Both',
                    Icons.card_travel,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Hourly rate',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Enter your hourly rate',
                    Icons.monetization_on,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('District',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'District',
                    Icons.travel_explore,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Address',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Address',
                    Icons.place,
                    false,
                    TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Short Description',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      height: 90,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white54,
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.multiline,

                        // readOnly: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          hintText: 'say something about yourself....',
                          prefixIcon: Icon(
                            Icons.info,
                            size: 22,
                            color: Colors.black45,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: .70,
                        child: CupertinoSwitch(
                          value: value,
                          onChanged: (value) =>
                              setState(() => this.value = value),
                        ),
                      ),
                      Text(
                        ' Agree with Terms & Conditions',
                        style: GoogleFonts.lato(
                          color: Colors.black87,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade50),
                      color: HexColor('#c7ecee').withOpacity(.45),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?  ',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(LoginPage()),
                        child: Container(
                          height: 35,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#c7ecee').withOpacity(.45)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Login here',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget countrySelect(Color color) {
    return CountryListPick(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choice your country'),
      ),
      theme: CountryTheme(
          isShowFlag: true,
          isShowTitle: true,
          isShowCode: true,
          isDownIcon: true,
          showEnglishName: true,
          alphabetSelectedBackgroundColor: Colors.red),
      initialSelection: 'Bangladesh',
      onChanged: (CountryCode? code) {
        print(code!.name);
        print(code.code);
        print(code.dialCode);
        print(code.flagUri);
      },
      useUiOverlay: true,
      useSafeArea: false,
    );
  }

  Widget field(
    String hintText,
    IconData icons,
    bool obcur,
    TextInputType keyboard,
  ) {
    return Center(
      child: Container(
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white54,
          ),
        ),
        child: TextField(
          keyboardType: keyboard,
          obscureText: obcur,

          // readOnly: true,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            hintText: hintText,
            prefixIcon: Icon(
              icons,
              size: 22,
              color: Colors.black45,
            ),
            fillColor: Colors.grey.shade100,
            filled: true,
          ),
        ),
      ),
    );
  }
}
