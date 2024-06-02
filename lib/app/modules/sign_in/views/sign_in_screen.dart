import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/base/base_view.dart';
import '../../../routes/app_pages.dart';
import '../../bottom_navigation/views/bottom_navigation.dart';
import '../../sign_up/views/sign_up_screen.dart';
import '../controllet/sign_in_controller.dart';
import 'enter_email_screen.dart';

class SignInScreen extends BaseView<SignInController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: controller.myKey,
            child: Stack(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/m-images/image1.jpeg'),
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Container(
                    // height: double.infinity,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 30),
                          child: Text(
                            'Login to your account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 40),
                          child: TextFormField(
                            controller: controller.emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a your email';
                              } else if (!controller.emailRegex
                                  .hasMatch(value)) {
                                return 'please enter valid email';
                              } else {
                                return null;
                              }
                            },
                            onChanged: controller.setEmail,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              fillColor: Colors.black12.withOpacity(0.1),
                              filled: true,
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15),
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
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a your password';
                              } else {
                                return null;
                              }
                            },
                            controller: controller.passwordController,
                            obscureText: true,
                            onChanged: controller.setPassword,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              fillColor: Colors.black12.withOpacity(0.1),
                              filled: true,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15),
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
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(() => EnterEmailScreen());
                              },
                              child: Text(
                                'Forget Your Password?',
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 30),
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
                                if (controller.myKey.currentState!.validate()) {
                                  controller.signInApi();
                                }
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
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(()=>SignUpScreen());
                              },
                              child: Text(
                                "Sign up",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 14),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
