import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/forget_password/password_reset.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SetNew extends StatefulWidget {
  const SetNew({super.key});

  @override
  State<SetNew> createState() => _SetNewState();
}

class _SetNewState extends State<SetNew> {
  final _password1controller = TextEditingController();
  final _password2controller = TextEditingController();
  String password1 = '';
  String password2 = '';
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
                      'Set a new password',
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
                      'Create a new password. Ensure it differs from',
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
                      'previous ones for security',
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
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'password',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a your password';
                    } else {
                      return null;
                    }
                  },
                  controller: _password1controller,
                  obscureText: true,
                  onChanged: (val) {
                    print('object');
                    setState(() {
                      password1 = (val);
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    labelText: 'Enter Your New Password',
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Confirm password',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a your password';
                    } else {
                      return null;
                    }
                  },
                  controller: _password2controller,
                  obscureText: true,
                  onChanged: (val) {
                    print('object');
                    setState(() {
                      password2 = (val);
                    });
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    labelText: 'Re-enter Password',
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
                      Get.to(() => Reset_Confirm());
                      _mykey.currentState!.validate();
                    },
                    child: Text(
                      'Update Password',
                      style: TextStyle(
                          fontFamily: "Inter",
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
