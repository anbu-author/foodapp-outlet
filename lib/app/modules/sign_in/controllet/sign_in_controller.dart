import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/repository/sign_in/sign_in_repo/sign_in_repository.dart';
import '../../bottom_navigation/views/bottom_navigation.dart';

class SignInController extends BaseController {
  final SignInRepository _repository =
      Get.find(tag: (SignInRepository).toString());

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

  Future<void> signInApi() async {
    var body = {
      "email": email.value,
      "password": password.value,
    };
    var data = _repository.signIn(body);
    print(data);
    await callDataService(
      data,
      onSuccess: (value) {
        Get.to(BotNaviBar());
      },
    );
  }
}
