import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../data/repository/sign_up/sign_up_repo/sign_up_repository.dart';

class SignUpController extends BaseController {
  final SignUpRepository _repository =
      Get.find(tag: (SignUpRepository).toString());
  final formKey = GlobalKey<FormState>();

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

  final myKey = GlobalKey<FormState>();

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  void setconfirmpassword(String value) {
    confirmpassword.value = value;
  }

  void setfirstname(String value) {
    firstName.value = value;
  }

  void setlastname(String value) {
    lastName.value = value;
  }

  final RegExp emailRegexScreen = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  final emailScreenKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  var email = ''.obs;
  var password = ''.obs;
  var confirmpassword = ''.obs;
  var firstName = ''.obs;
  var lastName = ''.obs;

  Future<void> signUpApi() async {
    var body = {
      "email": email.value,
      "password": password.value,
      "confirm_password": confirmpassword.value,
      "first_name": firstName.value,
      "last_name": lastName.value,
    };
    var data = _repository.signUp(body);
    print(data);
    await callDataService(
      data,
      onSuccess: (value) {
        Get.toNamed(Routes.DishList);
      },
    );
  }
}
