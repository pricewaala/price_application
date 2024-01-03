import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray5006 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray5006,
      );
  static get bodyLargeGray80007 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80007,
      );
  static get bodyLargeProductSansLightGray10001 =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: appTheme.gray10001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeProductSansLightGray10001Light =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: appTheme.gray10001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeProductSansLightGray5006 =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeProductSansLightGray5006Light =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeProductSansLightOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargeProductSansLightOnPrimaryContainer18 =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeProductSansLightOnPrimaryContainerLight =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeProductSansLightOnPrimaryContainerLight17 =>
      theme.textTheme.bodyLarge!.productSansLight.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeProductSansMedium =>
      theme.textTheme.bodyLarge!.productSansMedium;
  static get bodyLargeProductSansMediumBlack900 =>
      theme.textTheme.bodyLarge!.productSansMedium.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeProductSansMediumGray5006 =>
      theme.textTheme.bodyLarge!.productSansMedium.copyWith(
        color: appTheme.gray5006,
      );
  static get bodyLargeProductSansMediumGray80007 =>
      theme.textTheme.bodyLarge!.productSansMedium.copyWith(
        color: appTheme.gray80007,
      );
  static get bodyLargeRalewayGray5006 =>
      theme.textTheme.bodyLarge!.raleway.copyWith(
        color: appTheme.gray5006,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeRalewayOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.raleway.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumBluegray20001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumBluegray40004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40004,
      );
  static get bodyMediumBluegray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray50001,
      );
  static get bodyMediumBluegray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get bodyMediumDeeporange800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrange800,
      );
  static get bodyMediumGray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodyMediumGray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray200,
      );
  static get bodyMediumGray20013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray200,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray50004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50004,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray5006 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray5006,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumGray90005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90005,
      );
  static get bodyMediumGray90007 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90007,
      );
  static get bodyMediumGray90009 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90009.withOpacity(0.8),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppinsBluegray90001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyMediumPoppinsGray5006 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray5006,
      );
  static get bodyMediumPoppinsGray90009 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90009,
      );
  static get bodyMediumPoppinsWhiteA700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumProductSansLight =>
      theme.textTheme.bodyMedium!.productSansLight;
  static get bodyMediumProductSansLightGray5006 =>
      theme.textTheme.bodyMedium!.productSansLight.copyWith(
        color: appTheme.gray5006,
      );
  static get bodyMediumProductSansLightGray5006Light =>
      theme.textTheme.bodyMedium!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumProductSansLightGray90009 =>
      theme.textTheme.bodyMedium!.productSansLight.copyWith(
        color: appTheme.gray90009.withOpacity(0.5),
      );
  static get bodyMediumProductSansLightLight =>
      theme.textTheme.bodyMedium!.productSansLight.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumProductSansLightWhiteA700 =>
      theme.textTheme.bodyMedium!.productSansLight.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumRedA70004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.redA70004,
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRobotoBluegray200 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray200,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoGray200 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray200,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoGray60002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray60002,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoGray70002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray70002,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoWhiteA700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumTeal700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBluegray10006 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10006,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallBluegray40004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40004,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallBluegray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray50001,
      );
  static get bodySmallBluegray90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get bodySmallGray10001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10001,
        fontSize: 11.fSize,
      );
  static get bodySmallGray10001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodySmallGray10001_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodySmallGray10001_3 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodySmallGray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
        fontSize: 10.fSize,
      );
  static get bodySmallGray40005 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40005,
      );
  static get bodySmallGray5006 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5006,
      );
  static get bodySmallGray5006_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5006,
      );
  static get bodySmallGray80004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80004,
      );
  static get bodySmallGray8000411 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80004,
        fontSize: 11.fSize,
      );
  static get bodySmallGray80004_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80004,
      );
  static get bodySmallGray80004_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80004.withOpacity(0.3),
      );
  static get bodySmallGray90005 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90005,
      );
  static get bodySmallGray90005_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90005,
      );
  static get bodySmallGray90007 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90007,
      );
  static get bodySmallGray90009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90009.withOpacity(0.5),
      );
  static get bodySmallGray90009_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90009.withOpacity(0.5),
      );
  static get bodySmallGray90009_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90009.withOpacity(0.5),
      );
  static get bodySmallPoppinsBluegray40004 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40004,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsBluegray40099 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40099,
      );
  static get bodySmallPoppinsBluegray50001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray50001,
      );
  static get bodySmallPoppinsGray200 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallPoppinsGray20011 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray200,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsGray200_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallPoppinsGray90007 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90007,
      );
  static get bodySmallPoppinsRedA70001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.redA70001,
      );
  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallProductSansLight =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLight10 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallProductSansLight11 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallProductSansLightBlack900 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.black900.withOpacity(0.85),
      );
  static get bodySmallProductSansLightBlack90010 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallProductSansLightBlack90011 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallProductSansLightBlack900_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.black900.withOpacity(0.25),
      );
  static get bodySmallProductSansLightBlack900_2 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallProductSansLightBlack900_3 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get bodySmallProductSansLightBluegray200 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightBluegray20001 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray20001,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightBluegray20001_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodySmallProductSansLightBluegray200Light =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightBluegray200_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallProductSansLightBluegray40001 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallProductSansLightBluegray40001Light =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightBluegray40001Light10 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightBluegray40004 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40004,
        fontSize: 11.fSize,
      );
  static get bodySmallProductSansLightBluegray4000410 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40004,
        fontSize: 10.fSize,
      );
  static get bodySmallProductSansLightBluegray40004Light =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40004,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightBluegray40004_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray40004,
      );
  static get bodySmallProductSansLightBluegray900 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.blueGray900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightGray10001 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray10001,
      );
  static get bodySmallProductSansLightGray200 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray200,
        fontSize: 11.fSize,
      );
  static get bodySmallProductSansLightGray20010 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray200,
        fontSize: 10.fSize,
      );
  static get bodySmallProductSansLightGray200Light =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightGray200Light_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightGray200_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallProductSansLightGray200_2 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallProductSansLightGray500 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallProductSansLightGray50005 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray50005,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightGray5006 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightGray500610 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontSize: 10.fSize,
      );
  static get bodySmallProductSansLightGray500611 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontSize: 11.fSize,
      );
  static get bodySmallProductSansLightGray5006_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray5006,
      );
  static get bodySmallProductSansLightGray5006_2 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray5006,
      );
  static get bodySmallProductSansLightGray700 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallProductSansLightGray80004 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray80004.withOpacity(0.38),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightGray90007 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.gray90007,
      );
  static get bodySmallProductSansLightOnError =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightOnErrorContainer =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallProductSansLightOnErrorContainer_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallProductSansLightOnPrimary =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallProductSansLightRedA700 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.redA700,
      );
  static get bodySmallProductSansLightRedA70002 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.redA70002,
      );
  static get bodySmallProductSansLightWhiteA700 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  static get bodySmallProductSansLightWhiteA700_1 =>
      theme.textTheme.bodySmall!.productSansLight.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallProductSansLight_1 =>
      theme.textTheme.bodySmall!.productSansLight;
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displayMediumGray5006 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray5006,
      );
  // Headline text style
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallBluegray90004 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 25.fSize,
      );
  static get headlineSmallGray5006 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray5006,
      );
  static get headlineSmallGray5006_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray5006,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 25.fSize,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBluegray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get labelLargeBluegray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray50001,
      );
  static get labelLargeBluegray90004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get labelLargeGray10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get labelLargeGray10001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get labelLargeGray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray200,
      );
  static get labelLargeGray40005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40005,
      );
  static get labelLargeGray5006 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5006,
      );
  static get labelLargeGray90005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90005,
      );
  static get labelLargeGray90008 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90008.withOpacity(0.56),
      );
  static get labelLargeNunitoBluegray90004 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeNunitoGray10001 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.gray10001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeNunitoGray200 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.gray200,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeProductSans =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeProductSansBluegray90004 =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeProductSansGray5006 =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        color: appTheme.gray5006,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeProductSansGray80004 =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        color: appTheme.gray80004,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeProductSansWhiteA700 =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeProductSansWhiteA700Bold =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoBlack900 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get labelLargeRobotoBlack900Bold =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoGray200 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoGray200_1 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray200,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumNunito => theme.textTheme.labelMedium!.nunito.copyWith(
        fontSize: 10.fSize,
      );
  static get labelMediumNunitoBluegray90004 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: appTheme.blueGray90004.withOpacity(0.25),
      );
  static get labelMediumNunitoBluegray90004_1 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: appTheme.blueGray90004,
      );
  static get labelMediumNunitoGray5006 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: appTheme.gray5006,
      );
  static get labelMediumNunitoGray90005 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: appTheme.gray90005,
        fontSize: 10.fSize,
      );
  static get labelMediumNunitoGray90005_1 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: appTheme.gray90005,
      );
  static get labelMediumNunitoGray90007 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: appTheme.gray90007,
        fontSize: 10.fSize,
      );
  static get labelMediumProductSansMediumBluegray40004 =>
      theme.textTheme.labelMedium!.productSansMedium.copyWith(
        color: appTheme.blueGray40004,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumProductSansMediumGray200 =>
      theme.textTheme.labelMedium!.productSansMedium.copyWith(
        color: appTheme.gray200,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMedium_1 => theme.textTheme.labelMedium!;
  static get labelSmall8 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get labelSmallSemiBold => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSans =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansBlack900 =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansBlack900Bold =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansBlack900Bold22 =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansBluegray90004 =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        color: appTheme.blueGray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansBold =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansGray5006 =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        color: appTheme.gray5006,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansGray5006Bold =>
      theme.textTheme.titleLarge!.productSans.copyWith(
        color: appTheme.gray5006,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeProductSansLightBluegray40001 =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeProductSansLightBluegray40001_1 =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleLargeProductSansLightGray10001 =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeProductSansLightGray200 =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.gray200,
      );
  static get titleLargeProductSansLightGray200Light =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeProductSansLightGray5006 =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.gray5006,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeProductSansLightGray80001 =>
      theme.textTheme.titleLarge!.productSansLight.copyWith(
        color: appTheme.gray80001,
      );
  static get titleLargeProductSansMediumGray10001 =>
      theme.textTheme.titleLarge!.productSansMedium.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeProductSansMediumGray5006 =>
      theme.textTheme.titleLarge!.productSansMedium.copyWith(
        color: appTheme.gray5006,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeProductSansMediumGray80001 =>
      theme.textTheme.titleLarge!.productSansMedium.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeProductSansMediumGray80001_1 =>
      theme.textTheme.titleLarge!.productSansMedium.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get titleMediumBluegray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleMediumBluegray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get titleMediumGray5006 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5006,
      );
  static get titleMediumGray80007 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80007,
      );
  static get titleMediumGray90003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumGray90005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90005_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
      );
  static get titleMediumGray90009 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90009,
        fontSize: 18.fSize,
      );
  static get titleMediumMulishGray80007 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray80007,
        fontSize: 18.fSize,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito;
  static get titleMediumNunitoBluegray90004 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blueGray90004.withOpacity(0.49),
      );
  static get titleMediumNunitoBluegray90004SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blueGray90004.withOpacity(0.7),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoGray200 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoGray90005 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray90005,
      );
  static get titleMediumNunitoGray90007 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray90007,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray90009 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray90009,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumProductSansMediumGray5006 =>
      theme.textTheme.titleMedium!.productSansMedium.copyWith(
        color: appTheme.gray5006,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumProductSansMediumGray90008 =>
      theme.textTheme.titleMedium!.productSansMedium.copyWith(
        color: appTheme.gray90008,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get titleSmallBluegray40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get titleSmallBluegray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90002,
      );
  static get titleSmallBluegray90004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get titleSmallDeeporange800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrange800,
      );
  static get titleSmallGray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleSmallGray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray200,
      );
  static get titleSmallGray5006 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5006,
        fontSize: 15.fSize,
      );
  static get titleSmallGray5006_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5006,
      );
  static get titleSmallMulishBluegray20001 =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.blueGray20001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGray90009 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray90009,
      );
  static get titleSmallProductSansGray5006 =>
      theme.textTheme.titleSmall!.productSans.copyWith(
        color: appTheme.gray5006,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallProductSansGray80007 =>
      theme.textTheme.titleSmall!.productSans.copyWith(
        color: appTheme.gray80007,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallProductSansGray90005 =>
      theme.textTheme.titleSmall!.productSans.copyWith(
        color: appTheme.gray90005,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallProductSansRedA70003 =>
      theme.textTheme.titleSmall!.productSans.copyWith(
        color: appTheme.redA70003,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallProductSansWhiteA700 =>
      theme.textTheme.titleSmall!.productSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get productSansMedium {
    return copyWith(
      fontFamily: 'Product Sans Medium',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get productSans {
    return copyWith(
      fontFamily: 'Product Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get productSansLight {
    return copyWith(
      fontFamily: 'Product Sans Light',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
