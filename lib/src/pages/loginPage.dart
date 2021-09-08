import 'package:etravel_app/src/pages/homePage.dart';
import 'package:etravel_app/src/pages/registerPage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.only(left: 50);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 31),
                  child: Image.asset('assets/img/bg.jpg'),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Positioned(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: padding,
                    child: Text('Login',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          fontSize: 30,
                          color: Colors.black.withOpacity(.70),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: padding,
                    child: Text(
                      'Login to Continue',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Bold',
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                      padding: padding,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Email',
                    Icons.email,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: padding,
                    child: Text('Password',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          fontSize: 16,
                          color: Colors.black54,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  field(
                    'Password',
                    Icons.lock,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(HomePage()),
                    child: Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        height: 45,
                        width: 320,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade50),
                          color: HexColor('#c7ecee').withOpacity(.45),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Container(
                      height: 5,
                      width: 320,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade50),
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -15,
                            left: 145,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blueGrey,
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 155),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          child: Icon(
                            EvaIcons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            EvaIcons.google,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text(
                          'Create an account with your  ',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(RegisterPage()),
                          child: Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: HexColor('#c7ecee').withOpacity(.45)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              'Email address',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  Widget field(
    String hintText,
    IconData icons,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          height: 50,
          width: 320,
          child: TextField(
            obscureText: true,
            obscuringCharacter: '*',
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
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
      ),
    );
  }
}
