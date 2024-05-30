import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';

import 'package:get/get.dart';

import '../../../core/base/base_view.dart';
import '../../../core/widget/textfield/custom_text_input.dart';
import '../controllers/login_controller.dart';

class LoginView extends BaseView<LoginController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }


  @override
  Widget body(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height *
              AppValues.login_image_percentage,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage('images/image1.jpeg'),
          ),
        ),
        loginCard(context),
      ],
    );
  }

  Align loginCard(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height *
              AppValues.login_container_percentage,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppValues.radius_12),
                topRight: Radius.circular(AppValues.radius_12),
              ),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: fieldColumns(),
          ),
        ),
      );
  }

  Column fieldColumns() {
    return Column(
            children: [
              Obx(
                () {
                  return TextFormField(
                      onChanged: controller.emailChanged, // controller func
                      decoration: InputDecoration(
                          labelText: 'Email',
                          errorText: controller.errorText.value // obs
                          ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () {
                  return TextFormField(
                      onChanged: controller.passwordChanged, // controller func
                      decoration: InputDecoration(
                          labelText: 'Password',
                          errorText: controller.errorText.value // obs
                          ));
                },
              ),
              SizedBox(
                height: 35,
              ),
              Obx(
                () => Ripple(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppValues.radius_12),
                        ),
                        color: AppColors.colorPrimary),
                    child: Center(child: Text('Submit')),
                  ),
                  onTap: controller.submitFunc.value, // obs
                ),
              ),
            ],
          );
  }

  getEmailTextField(context) {
    return CustomTextInput(
      // textEditController: _emailcontroller,
      onChanged: controller.emailChanged,
      hintTextString: 'Enter User name',
      inputType: InputType.Default,
      enableBorder: true,
      themeColor: Theme.of(context).primaryColor,
      // cornerRadius: 48.0,
      // maxLength: 24,
      prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
      textColor: Colors.black,
      errorMessage: controller.errorText.value,
      labelText: 'User Name',
    );
  }
}
