import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/size_utils.dart';
import 'package:flutter_getx_template/app/routes/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get aktivGrotesk {
    return copyWith(
      fontFamily: 'Aktiv Grotesk',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get segoeUI {
    return copyWith(
      fontFamily: 'Segoe UI',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get oswald {
    return copyWith(
      fontFamily: 'Oswald',
    );
  }

  TextStyle get helvetica {
    return copyWith(
      fontFamily: 'Helvetica',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray80002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterGray40001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterGray800 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray800,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterOnError =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 13.fSize,
      );
  static get bodyMediumOswaldBluegray900 =>
      theme.textTheme.bodyMedium!.oswald.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumYellow900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow900,
        fontSize: 13.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 9.fSize,
      );
  static get bodySmallBluegray400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 9.fSize,
      );
  static get bodySmallHelveticaBluegray90002 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGray400 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.gray400,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGray60002 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.gray60002,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGray700 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGray70001 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.gray70001,
      );
  static get bodySmallHelveticaGray80006 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.gray80006,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGray900 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGreen400 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.green400,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGreen600 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.green600,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaGreen700 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: appTheme.green700,
      );
  static get bodySmallHelveticaPrimary =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaPrimary9 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
      );
  static get bodySmallHelveticaSecondaryContainer =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallHelveticaSecondaryContainer_1 =>
      theme.textTheme.bodySmall!.helvetica.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallInterOnError => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 9.fSize,
      );
  static get bodySmallOswaldBluegray400 =>
      theme.textTheme.bodySmall!.oswald.copyWith(
        color: appTheme.blueGray400,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOswaldWhiteA700 =>
      theme.textTheme.bodySmall!.oswald.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  static get bodySmallSegoeUIBluegray400 =>
      theme.textTheme.bodySmall!.segoeUI.copyWith(
        color: appTheme.blueGray400,
      );
// Label text style
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 12.fSize,
      );
  static get labelLargeGray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 12.fSize,
      );
  static get labelMediumOswaldWhiteA700 =>
      theme.textTheme.labelMedium!.oswald.copyWith(
        color: appTheme.whiteA700,
      );
// Title text style
  static get titleLargeArialOnPrimary =>
      theme.textTheme.titleLarge!.arial.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 21.fSize,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 21.fSize,
      );
  static get titleSmallOswaldWhiteA700 =>
      theme.textTheme.titleSmall!.oswald.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}
