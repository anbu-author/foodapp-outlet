import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/forget_password/verify_code.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mobile_number_01.dart';

class Enter_Email extends StatefulWidget {
  const Enter_Email({super.key});

  @override
  State<Enter_Email> createState() => _Enter_EmailState();
}

class _Enter_EmailState extends State<Enter_Email> {
  final _emailcontroller = TextEditingController();
  String email = '';
  final RegExp emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  final _mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _mykey,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(40, 40),
                        backgroundColor: Color(0xffECECEC),
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Forget Password',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      'Please enter your email to reset the password',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      'Your Email',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  controller: _emailcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a your email';
                    } else if (!emailRegex.hasMatch(value)) {
                      return 'please enter valid email';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(
                      () {
                        email = (val);
                      },
                    );
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5fd040),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      if (email.isEmpty) {
                        'Please enter a your email';
                        Get.snackbar('Error', 'Please enter your email',
                            duration: Duration(seconds: 3),
                            snackPosition: SnackPosition.BOTTOM);
                      } else if (!emailRegex.hasMatch(email)) {
                        'please enter valid email';
                      } else {
                        Get.to(() => Verify_code());
                      }
                      _mykey.currentState!.validate();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: "Inter",
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(() => Mobile_Num());
                      },
                      child: Text(
                        'use mobile number?',
                        style: GoogleFonts.openSans(
                            textStyle:
                                TextStyle(fontSize: 14, color: Colors.black)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
