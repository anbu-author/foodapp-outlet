import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../widget/custom_elevated_button.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/widget/custom_image_view.dart';
import '../../../routes/theme/app_decoration.dart';
import '../../../routes/theme/custom_text_style.dart';
import '../../../routes/theme/theme_helper.dart';
import '../controller/restaurant_item_added_controller.dart';
import '../models/menu_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MenuItemWidget extends StatelessWidget {
  MenuItemWidget(this.menuItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MenuItemModel menuItemModelObj;

  var controller = Get.find<RestaurantItemAddedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 13.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.customBorderTL18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Obx(
                    () => Text(
                      menuItemModelObj.pizza!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowUpGray80001,
                  height: 9.v,
                  width: 16.h,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 4.v,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 103.h),
                      padding: EdgeInsets.all(1.h),
                      decoration: AppDecoration.outlineDeepOrangeA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.deepOrangeA400,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        menuItemModelObj.margheritaText!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        menuItemModelObj.anAbsoluteText!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        menuItemModelObj.priceText!.value,
                        style: CustomTextStyles.bodyMediumGray700,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 69.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    top: 17.v,
                    bottom: 38.v,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: menuItemModelObj.bestSellerImage!.value,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                        ),
                      ),
                      Obx(
                        () => Text(
                          menuItemModelObj.bestSellerText!.value,
                          style: CustomTextStyles.bodySmallHelveticaPrimary9,
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                _buildAddButton()
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Opacity(
            opacity: 0.45,
            child: Divider(
              indent: 12.h,
              endIndent: 15.h,
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          padding: EdgeInsets.all(1.h),
                          decoration: AppDecoration.outlineRedA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.deepOrangeA400,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 16.v,
                          width: 82.h,
                          margin: EdgeInsets.only(left: 7.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgNounGlutenFree2387661,
                                      height: 10.v,
                                      width: 5.h,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Obx(
                                        () => Text(
                                          menuItemModelObj
                                              .glutenFreeText!.value,
                                          style: CustomTextStyles
                                              .bodySmallHelveticaGreen400,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 16.v,
                                  width: 82.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                    border: Border.all(
                                      color: appTheme.green400,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 1.v),
                    Obx(
                      () => Text(
                        menuItemModelObj.pizzaFrittaText!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        menuItemModelObj.classicText!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        menuItemModelObj.pricetext2!.value,
                        style: CustomTextStyles.bodyMediumGray700,
                      ),
                    )
                  ],
                ),
                _buildAddButton1()
              ],
            ),
          ),
          SizedBox(height: 22.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddButton() {
    return CustomElevatedButton(
      width: 74.h,
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        top: 19.v,
        bottom: 25.v,
      ),
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildAddButton1() {
    return CustomElevatedButton(
      width: 74.h,
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        top: 21.v,
        bottom: 25.v,
      ),
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }
}
