import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/home/views/widget/item_github_project.dart';
import 'package:get/get.dart';
import '../../../core/widget/custom_image_view.dart';
import '../../../routes/app_pages.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/core/widget/paging_view.dart';
import '/app/modules/home/controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  HomeView() {
    controller.getGithubGetxProjectList();
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'GetX Templates on GitHub',
    );
  }

  @override
  Widget body(BuildContext context) {
    return PagingView(
      onRefresh: () async {
        controller.onRefreshPage();
      },
      onLoadNextPage: () {
        controller.onLoadNextPage();
      },
      child: Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Obx(
          () => Column(
            children: [
              _buildStackBannerThree(),
              ListView.separated(
                shrinkWrap: true,
                itemCount: controller.projectList.length,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var model = controller.projectList[index];

                  return ItemGithubProject(dataModel: model);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: AppValues.smallMargin),
              ),
            ],
          ),
        ),
      ),
    );
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
                    imagePath: "'images/image1.jpeg'",
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
