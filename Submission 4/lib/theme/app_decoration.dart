import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.gray40003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray40003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray40003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray400031 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.gray40003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray50002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray50002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray800 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray800,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder60 => BorderRadius.circular(
        60.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
