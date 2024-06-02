import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

class ProfileController extends BaseController{
  final count = 0.obs;


  var name = 'Bhuvanesh Mohan'.obs;
  var selectedOption = 'Option 1'.obs;

  void updateName(String newName) {
    name.value = newName;
  }

  void updateSelectedOption(String option) {
    selectedOption.value = option;
  }


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
}