import 'package:flutter/material.dart';

import '../../app/routes/theme/custom_text_style.dart';
import '../../app/routes/theme/theme_helper.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleSmallPrimaryContainer.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}
