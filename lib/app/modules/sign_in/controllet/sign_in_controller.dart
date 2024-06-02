import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';

class SignInController extends BaseController {
  //TODO: Implement CartController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;



  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var email = ''.obs;
  var password = ''.obs;
  final RegExp emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  final myKey = GlobalKey<FormState>();

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }


  final emailScreenController = TextEditingController();
  var emailScreen = ''.obs;
  final RegExp emailRegexScreen = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  final emailScreenKey = GlobalKey<FormState>();

  void setEmailScreen(String value) {
    emailScreen.value = value;
  }
}