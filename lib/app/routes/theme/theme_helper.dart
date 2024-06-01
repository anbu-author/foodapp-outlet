import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/utils/pref_utils.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.deepOrange100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.green700,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.gray60003,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray60003.withOpacity(0.51),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.blueGray90003,
      fontSize: 19.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.deepOrange900,
      fontSize: 14.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.gray80001,
      fontSize: 12.fSize,
      fontFamily: 'Aktiv Grotesk',
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 32.fSize,
      fontFamily: 'Oswald',
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 29.fSize,
      fontFamily: 'Oswald',
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      color: appTheme.gray90003,
      fontSize: 13.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      color: appTheme.blueGray90002,
      fontSize: 11.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: appTheme.blueGray90002,
      fontSize: 20.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      color: appTheme.lime900,
      fontSize: 17.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      color: appTheme.gray800,
      fontSize: 15.fSize,
      fontFamily: 'Helvetica',
      fontWeight: FontWeight.w700,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFFFC8A3E),
    primaryContainer: Color(0XFF2D2D2D),
    secondaryContainer: Color(0XFFFF8F1E),
    errorContainer: Color(0X1A000000),
    onError: Color(0XFFA4A4A4),
    onPrimary: Color(0XFF1A1A1A),
    onPrimaryContainer: Color(0XFFFFF7F2),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber800 => Color(0XFFFF8E0C);
// BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF303030);
  Color get blueGray90000 => Color(0X00333333);
  Color get blueGray90001 => Color(0XFF1C2B44);
  Color get blueGray90002 => Color(0XFF2E2E2E);
  Color get blueGray90003 => Color(0XFF2F2F2F);
// DeepOrange
  Color get deepOrange100 => Color(0XFFFFD9BF);
  Color get deepOrange900 => Color(0XFF923F07);
  Color get deepOrangeA400 => Color(0XFFFF1313);
// Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray300 => Color(0XFFE2E2E2);
  Color get gray400 => Color(0XFFB2B2B2);
  Color get gray40001 => Color(0XFFB8B8B6);
  Color get gray40002 => Color(0XFFC8C8C8);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray500 => Color(0XFF979797);
  Color get gray50001 => Color(0XFF989898);
  Color get gray50002 => Color(0XFF929292);
  Color get gray600 => Color(0XFF7B7B7B);
  Color get gray60001 => Color(0XFF757575);
  Color get gray60002 => Color(0XFF6E6E6E);
  Color get gray60003 => Color(0XFF707070);
  Color get gray60004 => Color(0XFF787878);
  Color get gray700 => Color(0XFF555555);
  Color get gray70001 => Color(0XFF616161);
  Color get gray70002 => Color(0XFF6A6A6A);
  Color get gray800 => Color(0XFF4D4D4D);
  Color get gray80001 => Color(0XFF393939);
  Color get gray80002 => Color(0XFF464646);
  Color get gray80003 => Color(0XFF444444);
  Color get gray80004 => Color(0XFF5E2323);
  Color get gray80005 => Color(0XFF4E4E4E);
  Color get gray80006 => Color(0XFF434443);
  Color get gray900 => Color(0XFF1D1D1D);
  Color get gray90001 => Color(0XFF2A2A2A);
  Color get gray90002 => Color(0XFF242424);
  Color get gray90003 => Color(0XFF212121);
// Green
  Color get green400 => Color(0XFF52AC6E);
  Color get green600 => Color(0XFF279E5E);
  Color get green700 => Color(0XFF24953B);
  Color get greenA700 => Color(0XFF00C33B);
// Lime
  Color get lime900 => Color(0XFFA7693A);
  Color get lime90073 => Color(0X73A55E28);
// Orange
  Color get orange600 => Color(0XFFFF870E);
// Red
  Color get red600 => Color(0XFFE93B47);
  Color get redA700 => Color(0XFFFF0606);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
// Yellow
  Color get yellow700 => Color(0XFFFFB624);
  Color get yellow900 => Color(0XFFFB8019);
}
