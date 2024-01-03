import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(13.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black900.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        1,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.gray90008,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10003,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray5007,
        borderRadius: BorderRadius.circular(15.h),
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
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayTL21 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.gray5006,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL18 => BoxDecoration(
        color: appTheme.gray5006,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGrayTL181 => BoxDecoration(
        color: appTheme.gray90007,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get outlineBlackTL15 => BoxDecoration(
        color: appTheme.gray90007,
        borderRadius: BorderRadius.circular(15.h),
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
  static BoxDecoration get outlineBlackTL131 => BoxDecoration(
        color: appTheme.gray5006,
        borderRadius: BorderRadius.circular(13.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL22 => BoxDecoration(
        color: appTheme.gray5006,
        borderRadius: BorderRadius.circular(22.h),
      );
}
