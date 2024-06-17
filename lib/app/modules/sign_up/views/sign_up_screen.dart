import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';

import '../controllers/sign_up_controller.dart';

class SignUpScreen extends BaseView<SignUpController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              size: 30,
            ),
          ),
        ),
      ),
      body: Form(
        key: controller.myKey,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Sign up free account',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                controller: emailController,
                onChanged: controller.setEmail,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    hintText: 'email',
                    contentPadding:
                        EdgeInsets.only(bottom: 10, left: 20, top: 25),
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: passwordController,
                onChanged: controller.setPassword,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  fillColor: Colors.black12.withOpacity(0.1),
                  filled: true,
                  hintText: 'Password',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, left: 20, top: 25),
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: confirmPasswordController,
                onChanged: controller.setconfirmpassword,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  fillColor: Colors.black12.withOpacity(0.1),
                  filled: true,
                  hintText: 'ConfirmPassword',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, left: 20, top: 25),
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: firstNameController,
                onChanged: controller.setfirstname,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fillColor: Colors.black12.withOpacity(0.1),
                  filled: true,
                  hintText: 'Firstname',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, left: 20, top: 25),
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: lastNameController,
                onChanged: controller.setlastname,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    hintText: 'Lastname',
                    contentPadding:
                        EdgeInsets.only(bottom: 10, left: 20, top: 25),
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 60),
              child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5fd040),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(50.0), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      if (controller.myKey.currentState!.validate()) {
                        controller.signUpApi();
                      }
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                      ),
                    )),
              ),
            ),
            Spacer(),
            Text('By clicking Sign up you agree to the following '),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Terms and conditions',
                  style: TextStyle(
                    decoration: TextDecoration.underline, // Underline text
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
