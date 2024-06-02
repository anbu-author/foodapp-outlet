import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/forget_password/set_new_password.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Mobile_Otp extends StatefulWidget {
  const Mobile_Otp({super.key});

  @override
  State<Mobile_Otp> createState() => _Mobile_OtpState();
}

class _Mobile_OtpState extends State<Mobile_Otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    'Check you message',
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
                    'We sent a code to 86081****',
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
                    'enter 5 digit code that mentioned in the message',
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
                    Get.to(() => SetNew());
                  },
                  child: Text('Verify Code',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Spacer(),
                Text(
                  'Haven’t got the code yet?',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black)),
                ),
                Text(
                  ' Resend code',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(fontSize: 14, color: Colors.blue)),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
