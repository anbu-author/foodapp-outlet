import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../widget/app_bar/appbar_leading_image.dart';
import '../../../widget/app_bar/appbar_trailing_image.dart';
import '../../../widget/app_bar/custom_app_bar.dart';
import '../../../widget/custom_elevated_button.dart';
import '../../../widget/custom_switch.dart';
import '../../core/utils/image_constant.dart';
import '../../core/widget/custom_image_view.dart';
import '../../routes/theme/app_decoration.dart';
import '../../routes/theme/custom_text_style.dart';
import '../../routes/theme/theme_helper.dart';
import 'controller/restaurant_item_added_controller.dart';
import 'models/menu_item_model.dart';
import 'models/productcardlist_item_model.dart';
import 'models/promotion_item_model.dart';
import 'widgets/menu_item_widget.dart';
import 'widgets/productcardlist_item_widget.dart';
import 'widgets/promotion_item_widget.dart'; // ignore_for_file: must_be_immutable

class RestaurantItemAddedScreen
    extends GetWidget<RestaurantItemAddedController> {
  const RestaurantItemAddedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: 426.h,
          child: Column(
            children: [
              _buildCreateFromStack(),
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 661.v,
                        width: 417.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 661.v,
                                width: 409.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(19.h),
                                    topRight: Radius.circular(18.h),
                                    bottomLeft: Radius.circular(19.h),
                                    bottomRight: Radius.circular(19.h),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: theme.colorScheme.errorContainer
                                          .withOpacity(0.05),
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        1.18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            _buildRecommendedColumn(),
                            _buildVegOnlyRow(),
                            _buildGlutenFreeColumn(),
                            _buildProductCardList()
                          ],
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildMenu()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateFromStack() {
    return SizedBox(
      height: 276.v,
      width: 426.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 276.v,
              width: 426.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    leadingWidth: 28.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(
                        left: 19.h,
                        bottom: 1.v,
                      ),
                      onTap: () {
                        onTapArrowleftone();
                      },
                    ),
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgRewind,
                        margin: EdgeInsets.symmetric(horizontal: 27.h),
                      )
                    ],
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "lbl_hotel_h".tr,
                    style: CustomTextStyles.titleLargeOnPrimary,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_itallian_caf".tr,
                    style: CustomTextStyles.bodySmallBluegray400_1,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_racoon_city".tr,
                    style: CustomTextStyles.bodySmallBluegray400_1,
                  ),
                  SizedBox(height: 14.v),
                  Container(
                    margin: EdgeInsets.only(right: 26.h),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11,
                    ),
                    child: DottedBorder(
                      color: appTheme.gray60003,
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 1.v,
                        right: 1.h,
                        bottom: 1.v,
                      ),
                      strokeWidth: 1.h,
                      radius: Radius.circular(13),
                      borderType: BorderType.RRect,
                      dashPattern: [3.155555486679077],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 10.v,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgSignal,
                                        height: 9.v,
                                        width: 10.h,
                                        margin: EdgeInsets.only(
                                          top: 3.v,
                                          bottom: 1.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_4_2".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    "lbl_1000_ratings".tr,
                                    style:
                                        CustomTextStyles.bodySmallBluegray400,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                _buildDeliveryDistance(
                                  linkedinImage:
                                      ImageConstant.imgClockGray80003,
                                  kmsCounterText: "lbl_40_mins".tr,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "lbl_delivery_time".tr,
                                  style: CustomTextStyles.bodySmallBluegray400,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                _buildDeliveryDistance(
                                  linkedinImage:
                                      ImageConstant.imgLinkedinBlueGray900,
                                  kmsCounterText: "lbl_3_8_kms".tr,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "msg_delivery_distance".tr,
                                  style: CustomTextStyles.bodySmallBluegray400,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 21.v),
                  SizedBox(
                    height: 49.v,
                    child: Obx(
                      () => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 9.h,
                          );
                        },
                        itemCount: controller.restaurantItemAddedModelObj.value
                            .promotionItemList.value.length,
                        itemBuilder: (context, index) {
                          PromotionItemModel model = controller
                              .restaurantItemAddedModelObj
                              .value
                              .promotionItemList
                              .value[index];
                          return PromotionItemWidget(
                            model,
                          );
                        },
                      ),
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
  Widget _buildRecommendedColumn() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          top: 53.v,
          right: 8.h,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: appTheme.gray60003,
              endIndent: 3.h,
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                "lbl_recommended".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 17.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVegOnlyRow() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(26.h, 21.v, 26.h, 622.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "lbl_veg_only".tr,
              style: CustomTextStyles.bodyMediumBluegray90001,
            ),
            Obx(
              () => CustomSwitch(
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 2.v,
                ),
                value: controller.isSelectedSwitch.value,
                onChange: (value) {
                  controller.isSelectedSwitch.value = value;
                },
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowUp,
              height: 9.v,
              width: 16.h,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 4.v,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddButton() {
    return CustomElevatedButton(
      width: 74.h,
      text: "lbl_add".tr,
      buttonTextStyle: CustomTextStyles.bodyMedium13,
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

  /// Section Widget
  Widget _buildAddButton2() {
    return CustomElevatedButton(
      width: 74.h,
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 26.v,
      ),
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildGlutenFreeColumn() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.h,
          right: 24.h,
          bottom: 13.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1.v),
                          padding: EdgeInsets.all(2.h),
                          decoration: AppDecoration.outlineRedA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.deepOrangeA400,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionGreenA700,
                          height: 15.v,
                          width: 31.h,
                          margin: EdgeInsets.only(left: 9.h),
                        )
                      ],
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 190.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "msg_margherita_pizza".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPolygon2,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "lbl_best_seller".tr,
                                    style: CustomTextStyles
                                        .bodySmallHelveticaPrimary9,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "msg_fresh_out_of_the".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_7_00".tr,
                      style: CustomTextStyles.bodyMediumGray700,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    children: [
                      _buildAddButton(),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_customize".tr,
                        style: CustomTextStyles.bodySmallGray50002,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 19.v),
            Opacity(
              opacity: 0.45,
              child: Divider(),
            ),
            SizedBox(height: 17.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 129.h),
                      padding: EdgeInsets.all(2.h),
                      decoration: AppDecoration.outlineRedA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Container(
                        height: 7.adaptSize,
                        width: 7.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.deepOrangeA400,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_lasagna".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "msg_the_ultimate_italian".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "lbl_7_50".tr,
                        style: CustomTextStyles.bodyMediumGray700,
                      ),
                    )
                  ],
                ),
                _buildAddButton1()
              ],
            ),
            SizedBox(height: 21.v),
            Opacity(
              opacity: 0.45,
              child: Divider(),
            ),
            SizedBox(height: 17.v),
            Container(
              margin: EdgeInsets.only(right: 367.h),
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.outlineGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Container(
                height: 7.adaptSize,
                width: 7.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.green700,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_panettone".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "msg_an_italian_sweet".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "lbl_0_99".tr,
                      style: CustomTextStyles.bodySmallHelveticaGray700,
                    )
                  ],
                ),
                _buildAddButton2()
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 661.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 113.v,
              bottom: 353.v,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 20.h,
              );
            },
            itemCount: controller.restaurantItemAddedModelObj.value
                .productcardlistItemList.value.length,
            itemBuilder: (context, index) {
              ProductcardlistItemModel model = controller
                  .restaurantItemAddedModelObj
                  .value
                  .productcardlistItemList
                  .value[index];
              return ProductcardlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenu() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 18.v,
            );
          },
          itemCount: controller
              .restaurantItemAddedModelObj.value.menuItemList.value.length,
          itemBuilder: (context, index) {
            MenuItemModel model = controller
                .restaurantItemAddedModelObj.value.menuItemList.value[index];
            return MenuItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryDistance({
    required String linkedinImage,
    required String kmsCounterText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: linkedinImage,
          height: 11.v,
          width: 8.h,
          margin: EdgeInsets.only(top: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            kmsCounterText,
            style: CustomTextStyles.bodyMediumBluegray900.copyWith(
              color: appTheme.blueGray900,
            ),
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
