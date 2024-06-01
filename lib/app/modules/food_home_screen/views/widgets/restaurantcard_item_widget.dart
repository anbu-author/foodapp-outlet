import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../widget/custom_outlined_button.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/widget/custom_image_view.dart';
import '../../../../routes/theme/app_decoration.dart';
import '../../../../routes/theme/custom_text_style.dart';
import '../../../../routes/theme/theme_helper.dart';
import '../../controller/food_home_controller.dart';
import '../../models/restaurantcard_item_model.dart';// ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RestaurantcardItemWidget extends StatelessWidget {
  RestaurantcardItemWidget(this.restaurantcardItemModelObj, {Key? key})
      : super(
          key: key,
        );

  RestaurantcardItemModel restaurantcardItemModelObj;

  var controller = Get.find<FoodHomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: restaurantcardItemModelObj.restaurantImage!.value,
              height: 127.v,
              width: 133.h,
              radius: BorderRadius.circular(
                11.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(
                    () => Text(
                      restaurantcardItemModelObj.restaurantName!.value,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(
                    () => Text(
                      restaurantcardItemModelObj.cuisineType!.value,
                      style: CustomTextStyles.bodyMediumInterGray40001,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(
                    () => Text(
                      restaurantcardItemModelObj.distance!.value,
                      style: CustomTextStyles.bodyMediumInterGray800,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgComponent732,
                        height: 8.v,
                        width: 9.h,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 4.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          bottom: 1.v,
                        ),
                        child: Obx(
                          () => Text(
                            restaurantcardItemModelObj.rating!.value,
                            style: CustomTextStyles
                                .bodySmallHelveticaSecondaryContainer,
                          ),
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 7.v,
                          bottom: 4.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.gray40001,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClockGray70001,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          top: 3.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Obx(
                          () => Text(
                            restaurantcardItemModelObj.estimatedTime!.value,
                            style: CustomTextStyles.bodySmallHelveticaGray70001,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                _buildDiscount()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscount() {
    return CustomOutlinedButton(
      height: 25.v,
      width: 94.h,
      text: "lbl_55_off".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgTelevision,
          height: 11.v,
          width: 10.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallHelveticaGreen700,
    );
  }
}
