import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:price_s_application2/core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 5,
        keyboardType: TextInputType.number,
        textStyle:
            textStyle ?? CustomTextStyles.labelMediumNunitoBluegray90004_1,
        hintStyle:
            hintStyle ?? CustomTextStyles.labelMediumNunitoBluegray90004_1,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 58.h,
          fieldWidth: 58.h,
          shape: PinCodeFieldShape.circle,
          selectedColor: appTheme.gray50002,
          inactiveColor: appTheme.gray200,
          activeColor: appTheme.gray200,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
