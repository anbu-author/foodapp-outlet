import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../widget/custom_elevated_button.dart';
import '../../../core/widget/custom_image_view.dart';
import '../../../routes/theme/app_decoration.dart';
import '../../../routes/theme/custom_text_style.dart';
import '../../../routes/theme/theme_helper.dart';
import '../controller/restaurant_item_added_controller.dart';
import '../models/productcardlist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  ProductcardlistItemWidget(this.productcardlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProductcardlistItemModel productcardlistItemModelObj;

  var controller = Get.find<RestaurantItemAddedController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 282.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: AppDecoration.outlineErrorContainer1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: productcardlistItemModelObj.image!.value,
                  height: 120.v,
                  width: 282.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2.v),
                        padding: EdgeInsets.all(1.h),
                        decoration: AppDecoration.outlineGreen.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Container(
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.green700,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              productcardlistItemModelObj.bestsellerone!.value,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 2.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Obx(
                          () => Text(
                            productcardlistItemModelObj.text!.value,
                            style: CustomTextStyles.bodySmallHelveticaPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          productcardlistItemModelObj.title!.value,
                          style: CustomTextStyles.labelLargeGray90001,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Obx(
                        () => Text(
                          productcardlistItemModelObj.price!.value,
                          style: CustomTextStyles.bodySmallHelveticaGray700,
                        ),
                      )
                    ],
                  ),
                  _buildAddButton()
                ],
              ),
              SizedBox(height: 9.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddButton() {
    return CustomElevatedButton(
      width: 74.h,
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        left: 88.h,
        top: 5.v,
      ),
      buttonTextStyle: CustomTextStyles.bodyMedium13,
    );
  }
}
