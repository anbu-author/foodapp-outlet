import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom_navigation/views/bottom_navigation.dart';


class PasswordSuccess extends StatefulWidget {
  const PasswordSuccess({super.key});

  @override
  State<PasswordSuccess> createState() => _PasswordSuccessState();
}

class _PasswordSuccessState extends State<PasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: SvgPicture.asset(
                height: 100,
                width: 100,
                "assets/images/img_Stick.svg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Password Reset',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Congratulations! Your password has',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'been changed. Click continue to login',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(fontSize: 14, color: Colors.black),
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
                    Get.to(BotNaviBar());
                  },
                  child: Text('Done',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
