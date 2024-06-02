import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';

import 'package:get/get.dart';

import '../../../core/values/app_values.dart';
import '../../../core/widget/custom_image_view.dart';
import '../../../core/widget/paging_view.dart';
import '../../../routes/app_pages.dart';
import '../controllers/nearby_controller.dart';

class NearbyView extends BaseView<NearbyController> {
  @override
  Widget body(BuildContext context) {
    return PagingView(
      onRefresh: () async {
        // controller.onRefreshPage();
      },
      onLoadNextPage: () {
        // controller.onLoadNextPage();
      },
      child: Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child:Column(
            children: [
              _buildStackBannerThree(),
            ],
          ),
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  Widget _buildStackBannerThree() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
          height: 216,
          child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 15,
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(AppPages.cartScreen);
                  },
                  child: CustomImageView(
                    imagePath: "",
                    height: 216,
                    width: 216,
                    radius: BorderRadius.circular(
                      8,
                    ),
                  ),
                );
              })
      ),
    );
  }
}
