import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/forget_password/pass_reset_successful.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Reset_Confirm extends StatefulWidget {
  const Reset_Confirm({super.key});

  @override
  State<Reset_Confirm> createState() => _Reset_ConfirmState();
}

class _Reset_ConfirmState extends State<Reset_Confirm> {
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
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    'Password Reset',
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
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Your password has been successfully reset. click',
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
                    'confirm to set a new password',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
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
                    Get.to(() => PasswordSuccess());
                  },
                  child: Text('Confirm',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
