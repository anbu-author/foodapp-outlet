import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Drawer(
        elevation: 5,
        backgroundColor: Color(0xff3F4D67),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.yellow,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Momo Nation Cafe',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'momonation@gmail.com',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              DrawerListTile(
                title: 'Dashboard',
                svgSrc: 'images/dashboard-svgrepo-com.svg',
                ontap: () {
                  Get.toNamed(Routes.DashboardScreen);
                },
                textStyle: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                decoration: BoxDecoration(),
              ),
              DrawerListTile(
                title: 'Category',
                svgSrc: 'images/search-category.svg',
                ontap: () {
                  Get.toNamed(Routes.Screen2);
                },
                textStyle: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ),
              DrawerListTile(
                title: 'Customisation Groups',
                svgSrc: 'images/calendar-note.svg',
                ontap: () {
                  Get.toNamed(Routes.CustomGroup);
                },
                textStyle: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ),
              DrawerListTile(
                title: 'Item',
                svgSrc: 'images/dish-svgrepo-com.svg',
                ontap: () {
                  Get.toNamed(Routes.DishList);
                },
                textStyle: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ),
              DrawerListTile(
                title: 'Orders',
                svgSrc: 'images/orders.svg',
                ontap: () {
                  Get.toNamed(Routes.OngoingOrders);
                },
                textStyle: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ),
              DrawerListTile(
                title: 'Coupon',
                svgSrc: 'images/tag--tags-bookmark-favorite.svg',
                ontap: () {
                  Get.toNamed(Routes.CouponList);
                },
                textStyle: GoogleFonts.robotoFlex(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.ontap,
    this.selected,
    this.textStyle,
    this.googleFonts,
    this.colourFilter,
    this.decoration,
  });
  final String title, svgSrc;
  final VoidCallback ontap;
  final bool? selected;
  final TextStyle? textStyle;
  final ColorFilter? colourFilter;
  final GoogleFonts? googleFonts;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      onTap: ontap,
      leading: SvgPicture.asset(
        height: 16,
        width: 16,
        svgSrc,
        colorFilter: colourFilter,
      ),
      title: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
