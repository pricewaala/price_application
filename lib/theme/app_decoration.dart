import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.5),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.4),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray700,
      );
  static BoxDecoration get fillBluegray200 => BoxDecoration(
        color: appTheme.blueGray200,
      );
  static BoxDecoration get fillBluegray400 => BoxDecoration(
        color: appTheme.blueGray400,
      );
  static BoxDecoration get fillBluegray40001 => BoxDecoration(
        color: appTheme.blueGray40001,
      );
  static BoxDecoration get fillBluegray500 => BoxDecoration(
        color: appTheme.blueGray500,
      );
  static BoxDecoration get fillBluegray600 => BoxDecoration(
        color: appTheme.blueGray600.withOpacity(0.5),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray80002,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: appTheme.gray10003,
      );
  static BoxDecoration get fillGray10006 => BoxDecoration(
        color: appTheme.gray10006,
      );
  static BoxDecoration get fillGray10008 => BoxDecoration(
        color: appTheme.gray10008,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray40001 => BoxDecoration(
        color: appTheme.gray40001.withOpacity(0.5),
      );
  static BoxDecoration get fillGray40004 => BoxDecoration(
        color: appTheme.gray40004,
      );
  static BoxDecoration get fillGray40005 => BoxDecoration(
        color: appTheme.gray40005,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray50003 => BoxDecoration(
        color: appTheme.gray50003,
      );
  static BoxDecoration get fillGray50006 => BoxDecoration(
        color: appTheme.gray50006,
      );
  static BoxDecoration get fillGray5004 => BoxDecoration(
        color: appTheme.gray5004,
      );
  static BoxDecoration get fillGray5006 => BoxDecoration(
        color: appTheme.gray5006,
      );
  static BoxDecoration get fillGray5007 => BoxDecoration(
        color: appTheme.gray5007,
      );
  static BoxDecoration get fillGray600 => BoxDecoration(
        color: appTheme.gray600,
      );
  static BoxDecoration get fillGray70001 => BoxDecoration(
        color: appTheme.gray70001,
      );
  static BoxDecoration get fillGray80001 => BoxDecoration(
        color: appTheme.gray80001,
      );
  static BoxDecoration get fillGray80006 => BoxDecoration(
        color: appTheme.gray80006,
      );
  static BoxDecoration get fillGray90005 => BoxDecoration(
        color: appTheme.gray90005,
      );
  static BoxDecoration get fillGray90007 => BoxDecoration(
        color: appTheme.gray90007,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 1),
          colors: [
            appTheme.blue300,
            appTheme.cyan600,
            appTheme.indigo200,
          ],
        ),
      );
  static BoxDecoration get gradientTealToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.teal400,
            appTheme.cyan200,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90033 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900331 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900332 => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900333 => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.5),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack90010 => BoxDecoration(
        color: appTheme.gray5006,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.09),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90011 => BoxDecoration(
        color: appTheme.gray80001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.09),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
        color: appTheme.gray80007,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.09),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9005 => BoxDecoration(
        color: appTheme.gray5007,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9006 => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9007 => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9008 => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9009 => BoxDecoration(
        color: appTheme.gray90007,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.09),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray10004 => BoxDecoration();
  static BoxDecoration get outlineBluegray90004 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray90004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray5003,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray10005 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray10005,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray10008 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray10008,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray10009 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray10009,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20003 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray20003,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration();
  static BoxDecoration get outlineGray5003 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray5003,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray5006 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray5006,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray5007 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray5007,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray80001 => BoxDecoration(
        color: appTheme.gray90007,
        border: Border.all(
          color: appTheme.gray80001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray80004 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray80004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray80005 => BoxDecoration(
        color: appTheme.gray90007,
        border: Border.all(
          color: appTheme.gray80005,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray90004 => BoxDecoration(
        color: appTheme.gray90007,
        border: Border.all(
          color: appTheme.gray90004,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray90005 => BoxDecoration(
        color: appTheme.gray90005,
        border: Border.all(
          color: appTheme.gray90005,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray90006 => BoxDecoration(
        color: appTheme.gray90005,
        border: Border.all(
          color: appTheme.gray90006,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray90007 => BoxDecoration(
        color: appTheme.gray90005,
        border: Border.all(
          color: appTheme.gray90007,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray900071 => BoxDecoration(
        color: appTheme.gray90005,
        border: Border.all(
          color: appTheme.gray90007,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        color: appTheme.gray90005,
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get circleBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder66 => BorderRadius.circular(
        66.h,
      );

  // Custom borders
  static BorderRadius get customBorderLR30 => BorderRadius.horizontal(
        right: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL13 => BorderRadius.only(
        topLeft: Radius.circular(13.h),
        topRight: Radius.circular(12.h),
        bottomLeft: Radius.circular(12.h),
        bottomRight: Radius.circular(13.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL201 => BorderRadius.horizontal(
        left: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.horizontal(
        left: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL41 => BorderRadius.vertical(
        top: Radius.circular(41.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
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
    