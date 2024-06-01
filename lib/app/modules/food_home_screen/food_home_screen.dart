import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:flutter_getx_template/app/modules/food_home_screen/views/widgets/listclock_item_widget.dart';
import 'package:flutter_getx_template/app/modules/food_home_screen/views/widgets/restaurantcard_item_widget.dart';
import 'package:get/get.dart';
import '../../../widget/app_bar/appbar_leading_image.dart';
import '../../../widget/app_bar/appbar_subtitle.dart';
import '../../../widget/app_bar/appbar_title.dart';
import '../../../widget/app_bar/appbar_trailing_image.dart';
import '../../../widget/app_bar/custom_app_bar.dart';
import '../../../widget/custom_outlined_button.dart';
import '../../core/base/base_view.dart';
import '../../core/utils/image_constant.dart';
import '../../core/widget/custom_image_view.dart';
import '../../routes/app_pages.dart';
import '../../routes/theme/custom_button_style.dart';
import '../../routes/theme/custom_text_style.dart';
import '../../routes/theme/theme_helper.dart';
import 'controller/food_home_controller.dart';
import 'models/listclock_item_model.dart';
import 'models/restaurantcard_item_model.dart';

class FoodHomeScreen extends BaseView<FoodHomeController> {

  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 26.v),
          child: Column(
            children: [
              _buildStackBannerThree(),
              SizedBox(height: 30.v),
              _buildListClock(),
              SizedBox(height: 27.v),
              _buildRowAllRestaurants(),
              SizedBox(height: 31.v),
              _buildRestaurantcard()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 71.v,
      leadingWidth: 100.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLinkedin,
        margin: EdgeInsets.only(
          left: 92.h,
          top: 35.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "lbl_home".tr,
            margin: EdgeInsets.only(
              left: 85.h,
              right: 78.h,
            ),
          ),
          SizedBox(height: 7.v),
          AppbarSubtitle(
            text: "msg_2604_java_lane".tr,
          )
        ],
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowDown,
          margin: EdgeInsets.fromLTRB(8.h, 38.v, 91.h, 11.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackBannerThree() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
          height: 216.v,
          child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 15.h,
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 20.adaptSize),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(AppPages.cartScreen);
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBanner3,
                    height: 216.adaptSize,
                    width: 216.adaptSize,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                );
              }) /*Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBanner3,
                    height: 216.adaptSize,
                    width: 216.adaptSize,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),*/
          ),
    );
  }

  /// Section Widget
  Widget _buildListClock() {
    return SizedBox(
      height: 92.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 24.h,
            );
          },
          itemCount:
              controller.foodHomeModelObj.value.listclockItemList.value.length,
          itemBuilder: (context, index) {
            ListclockItemModel model = controller
                .foodHomeModelObj.value.listclockItemList.value[index];
            return ListclockItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilter() {
    return CustomOutlinedButton(
      height: 26.v,
      width: 76.h,
      text: "lbl_filter".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 12.adaptSize,
          width: 12.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.bodyMediumGray60001,
    );
  }

  /// Section Widget
  Widget _buildRowAllRestaurants() {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              "lbl_all_restaurants".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          _buildFilter()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRestaurantcard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 21.v,
            );
          },
          itemCount: controller
              .foodHomeModelObj.value.restaurantcardItemList.value.length,
          itemBuilder: (context, index) {
            RestaurantcardItemModel model = controller
                .foodHomeModelObj.value.restaurantcardItemList.value[index];
            return InkWell(
              onTap: () {
                Get.toNamed(AppPages.restaurantItemAddedScreen);
              },
              child: RestaurantcardItemWidget(
                model,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

}
