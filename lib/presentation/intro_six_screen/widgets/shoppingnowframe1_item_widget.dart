import '../models/shoppingnowframe1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Shoppingnowframe1ItemWidget extends StatelessWidget {
  Shoppingnowframe1ItemWidget(
    this.shoppingnowframe1ItemModelObj, {
    Key? key,
    this.onTapFashionPng,
  }) : super(
          key: key,
        );

  Shoppingnowframe1ItemModel shoppingnowframe1ItemModelObj;

  VoidCallback? onTapFashionPng;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapFashionPng!.call();
        },
        child: Container(
          height: 368.v,
          width: 261.h,
          margin: EdgeInsets.only(
            left: 217.h,
            right: 58.h,
            bottom: 253.v,
          ),
          padding: EdgeInsets.symmetric(horizontal: 34.h),
          decoration: AppDecoration.fillGray20001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: shoppingnowframe1ItemModelObj?.fashionPng,
            height: 368.v,
            width: 182.h,
            alignment: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
