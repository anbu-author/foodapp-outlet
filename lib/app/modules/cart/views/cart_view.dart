import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:flutter_getx_template/app/modules/cart/views/widget/coupon_sreen.dart';

import 'package:get/get.dart';

import '../../../../widget/app_bar/appbar_leading_image.dart';
import '../../../../widget/app_bar/appbar_trailing_image.dart';
import '../../../../widget/app_bar/custom_app_bar.dart';
import '../../../../widget/custom_elevated_button.dart';
import '../../../../widget/custom_outlined_button.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/widget/custom_image_view.dart';
import '../../../routes/theme/app_decoration.dart';
import '../../../routes/theme/custom_button_style.dart';
import '../../../routes/theme/custom_text_style.dart';
import '../../../routes/theme/theme_helper.dart';
import '../controllers/cart_controller.dart';

class CartScreen extends BaseView<CartController> {
  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: 426.h,
          child: Column(
            children: [
              _buildColumnarrowleft(),
              Container(
                padding: EdgeInsets.all(7.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildRowuserone(),
                    SizedBox(height: 7.v),
                    _buildColumnmargherit(),
                    SizedBox(height: 5.v),
                    _buildColumnmargherit1(),
                    SizedBox(height: 5.v),
                    _buildRowpannacotta(),
                    SizedBox(height: 5.v),
                    CustomElevatedButton(
                      height: 53.v,
                      text: "lbl_proceed_to_pay".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                    SizedBox(height: 1.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  /// Section Widget
  Widget _buildColumnarrowleft() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineErrorContainer2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            leadingWidth: 27.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeftGray80005,
              margin: EdgeInsets.only(left: 18.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgRewindGray60004,
                margin: EdgeInsets.symmetric(horizontal: 19.h),
              )
            ],
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHotelH54x54,
                    height: 54.adaptSize,
                    width: 54.adaptSize,
                    radius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_hotel_h".tr,
                          style: CustomTextStyles.titleLargeArialOnPrimary,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_racoon_city".tr,
                          style: CustomTextStyles.bodySmallSegoeUIBluegray400,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 26.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 7.v,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 9.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "msg_margherita_pizza".tr,
                    style: CustomTextStyles.bodyMediumGray80002,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: _buildRowpatheleven(
                      countText: "lbl_1".tr,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_5_00".tr,
                        style:
                            CustomTextStyles.bodySmallHelveticaGray400.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        "lbl_7_00".tr,
                        style: CustomTextStyles.bodyMediumGray90003,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 26.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  padding: EdgeInsets.all(1.h),
                  decoration: AppDecoration.outlineGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green700,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_potato_gnocchi".tr,
                    style: CustomTextStyles.bodyMediumGray80002,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: _buildRowpatheleven(
                    countText: "lbl_2".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_2_07".tr,
                    style: CustomTextStyles.bodyMediumGray90003,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 26.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  padding: EdgeInsets.all(1.h),
                  decoration: AppDecoration.outlineGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.green700,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "msg_lemon_ricotta_pasta".tr,
                    style: CustomTextStyles.bodyMediumGray80002,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: _buildRowpatheleven(
                    countText: "lbl_1".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_1_05".tr,
                    style: CustomTextStyles.bodyMediumGray90003,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Divider(
            color: appTheme.gray60003,
            indent: 18.h,
            endIndent: 26.h,
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                right: 83.h,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 18.v,
                    width: 14.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "msg_any_specific_instructions".tr,
                      style: CustomTextStyles.bodyMediumInterOnError,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowuserone() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: GestureDetector(
        onTap: () {
          Get.to(() => Coupon_page());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 19.v,
              width: 18.h,
              margin: EdgeInsets.symmetric(vertical: 2.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 5.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_apply_coupon".tr,
                style: CustomTextStyles.bodyMediumGray80002,
              ),
            ),
            Spacer(),
            CustomImageView(
              onTap: () {
                Get.to(() => Coupon_page());
              },
              imagePath: ImageConstant.imgArrowRight,
              height: 16.v,
              width: 9.h,
              margin: EdgeInsets.only(top: 9.v),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmargherit() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_bill_details".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowmargherita(
              packingCharge: "lbl_item_total".tr,
              price: "lbl_10_12".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowmargherita1(
              taxText: "msg_delivery_charges".tr,
              priceText: "lbl_3_00".tr,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowmargherita(
              packingCharge: "lbl_packing_charge".tr,
              price: "lbl_0".tr,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowmargherita1(
              taxText: "lbl_tax".tr,
              priceText: "lbl_1_80".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowmargherita(
              packingCharge: "lbl_total_discount".tr,
              price: "lbl_3_50".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildRowmargherita(
              packingCharge: "lbl_to_pay".tr,
              price: "lbl_18_42".tr,
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmargherit1() {
    return Container(
      width: 409.h,
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_delivery_time".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "lbl_now".tr,
                  style: CustomTextStyles.bodySmallHelveticaBluegray90002,
                ),
              ),
              Container(
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.only(left: 5.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconFeatherCheck,
                  height: 5.v,
                  width: 7.h,
                  alignment: Alignment.center,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(left: 23.h),
              //   child: Obx(
              //     () => CustomCheckboxButton(
              //       width: 48.h,
              //       text: "lbl_later".tr,
              //       value: controller.englishKeyNames.value,
              //       isRightCheck: true,
              //       onChange: (value) {
              //         controller.englishKeyNames.value = value;
              //       },
              //     ),
              //   ),
              // )
            ],
          ),
          SizedBox(height: 3.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowpannacotta() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 4.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinBlueGray900,
                      height: 11.v,
                      width: 8.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "msg_delivery_to_home".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_2604_java_lane".tr,
                    style: CustomTextStyles.bodySmallInterOnError,
                  ),
                )
              ],
            ),
          ),
          CustomOutlinedButton(
            height: 31.v,
            width: 78.h,
            text: "lbl_change".tr,
            margin: EdgeInsets.only(bottom: 4.v),
            buttonStyle: CustomButtonStyles.outlineGrayTL7,
            buttonTextStyle: CustomTextStyles.bodySmallHelveticaGray900,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowpatheleven({required String countText}) {
    return Container(
      width: 80.h,
      padding: EdgeInsets.symmetric(vertical: 4.v),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPath11,
            height: 1.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 6.v,
            ),
          ),
          Text(
            countText,
            style: CustomTextStyles.bodyMediumYellow900.copyWith(
              color: appTheme.yellow900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 6.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowmargherita({
    required String packingCharge,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          packingCharge,
          style: CustomTextStyles.bodySmallHelveticaGray60002.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.bodySmallHelveticaGray60002.copyWith(
            color: appTheme.gray60002,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildRowmargherita1({
    required String taxText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          taxText,
          style: CustomTextStyles.bodySmallHelveticaGray60002.copyWith(
            color: appTheme.gray60002,
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.bodySmallHelveticaGray60002.copyWith(
            color: appTheme.gray60002,
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
