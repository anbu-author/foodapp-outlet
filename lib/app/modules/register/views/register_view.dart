import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends BaseView<RegisterController> {

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
          Obx(() => Text(controller.result.value.message))
      ],
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

}
