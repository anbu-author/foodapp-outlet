import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';

import '../controllers/sign_up_controller.dart';

class SignUpScreen extends BaseView<SignUpController> {


  @override
  PreferredSizeWidget? appBar(BuildContext context) {
   return null;
  }
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
        key: controller.formKey,
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
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    hintText: 'Username',
                    contentPadding:
                    EdgeInsets.only(bottom: 10, left: 20, top: 25),
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the name';
                  }
                  if (value.length <= 4) {
                    return 'Please enter minimum 4';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
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
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Password';
                  }
                  if (value.length <= 8) {
                    return 'Please enter minimum 4';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    hintText: 'Phone number',
                    contentPadding:
                    EdgeInsets.only(bottom: 10, left: 20, top: 25),
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the phone number';
                  }
                  if (value.length < 10) {
                    return 'Please enter minimum 10';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    hintText: 'Email',
                    contentPadding:
                    EdgeInsets.only(bottom: 10, left: 20, top: 25),
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: 'Inter',
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null; // Return null if validation succeeds
                },
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
                      if (controller.formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('success')),
                        );
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
