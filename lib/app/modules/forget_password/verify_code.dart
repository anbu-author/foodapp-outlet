import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/forget_password/set_new_password.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Verify_code extends StatefulWidget {
  const Verify_code({super.key});

  @override
  State<Verify_code> createState() => _Verify_codeState();
}

class _Verify_codeState extends State<Verify_code> {
  String otpcode = '';
  var _pincontroller = TextEditingController();
  RegExp mobileNumberPattern = RegExp(r'^[0-9]{5}$');
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
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Check you email',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'We sent a reset link to mohan...@gmail.com',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'enter 5 digit code that mentioned in the email',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                child: Pinput(
                  controller: _pincontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a code';
                    } else if (!mobileNumberPattern.hasMatch(value)) {
                      return 'Please enter valid code';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      otpcode = (val);
                    });
                  },
                  keyboardType: TextInputType.number,
                  length: 5,
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 60,
                    textStyle: TextStyle(fontSize: 22, color: Colors.black),
                    decoration: BoxDecoration(
                      color: Color(0xffECECEC),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                  errorPinTheme: PinTheme(
                    width: 56,
                    height: 60,
                    textStyle: TextStyle(fontSize: 22, color: Colors.black),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 56,
                    height: 60,
                    textStyle: TextStyle(fontSize: 22, color: Colors.black),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.green,
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
                      if (otpcode.isEmpty) {
                        'Please enter your code';
                      } else if (!mobileNumberPattern.hasMatch(otpcode)) {
                        'Enter valid code';
                      } else {
                        Get.to(() => SetNew());
                      }
                      _mykey.currentState!.validate();
                    },
                    child: Text(
                      'Verify Code',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Spacer(),
                  Text(
                    'Haven’t got the email yet?',
                    style: GoogleFonts.openSans(
                        textStyle:
                            TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                  Text(
                    ' Resend email',
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(fontSize: 14, color: Colors.blue)),
                  ),
                  Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
