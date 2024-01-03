import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyMediumProductSansLightLight,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ??
            CustomTextStyles.bodyMediumProductSansLightGray5006Light,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(10.h),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray10003,
              ),
            ),
        enabledBorder: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray10003,
              ),
            ),
        focusedBorder: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.blueGray10003,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillWhiteA => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineBlueGray1 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray10001,
        ),
      );
  static UnderlineInputBorder get underLineGray => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray10007,
        ),
      );
  static UnderlineInputBorder get underLineOnError => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.redA100,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillWhiteATL20 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineGray1 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray20004,
        ),
      );
  static OutlineInputBorder get fillGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(13.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGrayTL10 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineBlueGray2 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray200,
        ),
      );
  static OutlineInputBorder get fillGray1 => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineGray2 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray5006,
        ),
      );
  static OutlineInputBorder get fillGrayTL101 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGrayTL20 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineGray3 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray200,
        ),
      );
  static UnderlineInputBorder get underLineBlueGray3 => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray40001,
        ),
      );
  static OutlineInputBorder get fillGrayTL13 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(13.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillGrayTL102 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide.none,
      );
}
