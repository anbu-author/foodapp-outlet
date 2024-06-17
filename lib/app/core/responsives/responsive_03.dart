import 'package:get/get.dart';

class Dimensions {
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static double statusBarHeight = Get.statusBarHeight;
  static double defaultWidth = 1536.0;
  static double defaultHeight = 729.6;

  static getHeight(double size) => (screenHeight / defaultHeight) * size;

  static getWidth(double size) => (screenWidth / defaultWidth) * size;

  static getTextSize(double size, {double? factor = 0.5}) =>
      size + (getWidth(size) - size) * factor;

  static double height_5 = getHeight(5);
  static double height_6 = getHeight(6);
  static double height_10 = getHeight(10);
  static double height_12 = getHeight(12);
  static double height_16 = getHeight(16);
  static double height_18 = getHeight(18);
  static double height_20 = getHeight(20);
  static double height_24 = getHeight(24);
  static double height_30 = getHeight(30);
  static double height_36 = getHeight(36);
  static double height_38 = getHeight(38);
  static double height_40 = getHeight(40);
  static double height_45 = getHeight(45);
  static double height_52 = getHeight(52);
  static double height_56 = getHeight(56);
  static double height_62 = getHeight(62);
  static double height_65 = getHeight(65);
  static double height_70 = getHeight(70);
  static double height_80 = getHeight(80);
  static double height_84 = getHeight(84);
  static double height_90 = getHeight(90);
  static double height_100 = getHeight(100);
  static double height_110 = getHeight(110);
  static double height_118 = getHeight(118);
  static double height_140 = getHeight(140);
  static double height_145 = getHeight(145);
  static double height_154 = getHeight(154);
  static double height_158 = getHeight(158);
  static double height_162 = getHeight(162);
  static double height_175 = getHeight(175);
  static double height_180 = getHeight(180);
  static double height_194 = getHeight(194);
  static double height_200 = getHeight(200);
  static double height_220 = getHeight(220);
  static double height_240 = getHeight(240);
  static double height_270 = getHeight(270);
  static double height_327 = getHeight(327);

  static double width_5 = getWidth(5);
  static double width_6 = getWidth(6);
  static double width_10 = getWidth(10);
  static double width_12 = getWidth(12);
  static double width_16 = getWidth(16);
  static double width_18 = getWidth(18);
  static double width_20 = getWidth(20);
  static double width_24 = getWidth(24);
  static double width_30 = getWidth(30);
  static double width_36 = getWidth(36);
  static double width_38 = getWidth(38);
  static double width_40 = getWidth(40);
  static double width_48 = getWidth(48);
  static double width_52 = getWidth(52);
  static double width_56 = getWidth(56);
  static double width_60 = getWidth(60);
  static double width_62 = getWidth(62);
  static double width_65 = getWidth(65);
  static double width_70 = getWidth(70);
  static double width_80 = getWidth(80);
  static double width_84 = getWidth(84);
  static double width_90 = getWidth(90);
  static double width_100 = getWidth(100);
  static double width_110 = getWidth(110);
  static double width_118 = getWidth(118);
  static double width_120 = getWidth(120);
  static double width_130 = getWidth(130);
  static double width_145 = getWidth(145);
  static double width_154 = getWidth(154);
  static double width_158 = getWidth(158);
  static double width_162 = getWidth(162);
  static double width_175 = getWidth(175);
  static double width_180 = getWidth(180);
  static double width_194 = getWidth(194);
  static double width_220 = getWidth(220);
  static double width_256 = getWidth(256);
  static double width_270 = getWidth(270);
}
