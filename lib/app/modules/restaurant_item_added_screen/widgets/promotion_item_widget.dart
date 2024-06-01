import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/widget/custom_image_view.dart';
import '../../../routes/theme/app_decoration.dart';
import '../../../routes/theme/custom_text_style.dart';
import '../controller/restaurant_item_added_controller.dart';
import '../models/promotion_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PromotionItemWidget extends StatelessWidget {
  PromotionItemWidget(this.promotionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PromotionItemModel promotionItemModelObj;

  var controller = Get.find<RestaurantItemAddedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineGray500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 147.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevisionGreen600,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(bottom: 6.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Obx(
                  () => Text(
                    promotionItemModelObj.text!.value,
                    style: CustomTextStyles.bodyMediumOswaldBluegray900,
                  ),
                ),
              )
            ],
          ),
          Obx(
            () => Text(
              promotionItemModelObj.text1!.value,
              style: CustomTextStyles.bodySmallOswaldBluegray400,
            ),
          )
        ],
      ),
    );
  }
}
