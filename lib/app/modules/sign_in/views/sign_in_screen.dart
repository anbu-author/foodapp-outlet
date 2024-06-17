import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/base/base_view.dart';
import '../controller/sign_in_controller.dart';

class SignInScreen extends BaseView<SignInController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff00BCD4),
        body: Form(
          key: controller.myKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90, bottom: 0),
                child: Text(
                  'Godeliver Admin',
                  style: GoogleFonts.familjenGrotesk(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 0.9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 30),
                child: Text(
                  'we serve the world',
                  style: GoogleFonts.familjenGrotesk(
                      fontSize: 15, color: Colors.white),
                ),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 20),
                        child: Text(
                          'Sign in to start your session',
                          style: GoogleFonts.familjenGrotesk(
                              fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 20, right: 10),
                            child: SvgPicture.asset(
                              'images/person-svgrepo-com.svg',
                              height: 18,
                              width: 18,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 38,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: TextFormField(
                                  controller: controller.emailController,
                                  onChanged: controller.setEmail,
                                  cursorColor: Colors.black,
                                  cursorHeight: 18,
                                  decoration: InputDecoration(
                                    hintText: 'E-Mail',
                                    hintStyle: GoogleFonts.familjenGrotesk(
                                        textStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 0),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.1),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 20, right: 10),
                            child: SvgPicture.asset(
                              'images/lock-svgrepo-com.svg',
                              height: 18,
                              width: 18,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 38,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: TextFormField(
                                  controller: controller.passwordController,
                                  onChanged: controller.setPassword,
                                  cursorColor: Colors.black,
                                  cursorHeight: 18,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.familjenGrotesk(
                                        textStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 0),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.1),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: false,
                              activeColor: Colors.blue,
                              onChanged: (bool? value) {},
                            ),
                            Text(
                              'Remember Me',
                              style: GoogleFonts.familjenGrotesk(fontSize: 14),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 120,
                              height: 30,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                elevation: 5,
                                color: Color(0xffE91E63),
                                onPressed: () {
                                  if (controller.myKey.currentState!
                                      .validate()) {
                                    controller.signInApi();
                                  }
                                },
                                child: Text(
                                  'SIGN IN',
                                  style: GoogleFonts.familjenGrotesk(
                                      textStyle: TextStyle(
                                          fontSize: 14, color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
