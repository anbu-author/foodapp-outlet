import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../widget/custom_icon_button.dart';
import '../../../../core/widget/custom_image_view.dart';
import '../../../../routes/theme/custom_text_style.dart';
import '../../controller/food_home_controller.dart';
import '../../models/listclock_item_model.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget(this.listclockItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListclockItemModel listclockItemModelObj;

  var controller = Get.find<FoodHomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Column(
        children: [
          Obx(
            () => CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(
                imagePath: listclockItemModelObj.clock!.value,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 43.h,
            child: Obx(
              () => Text(
                listclockItemModelObj.quickDelivery!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallHelveticaBluegray90002,
              ),
            ),
          )
        ],
      ),
    );
  }
}
