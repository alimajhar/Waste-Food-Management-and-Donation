import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargeRobotoOnErrorContainer =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumGray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40002,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray800Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLightblue500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlue500,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 14.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular_1 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmall14_1 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
