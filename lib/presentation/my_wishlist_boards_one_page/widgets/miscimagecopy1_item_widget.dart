import '../models/miscimagecopy1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Miscimagecopy1ItemWidget extends StatelessWidget {
  Miscimagecopy1ItemWidget(
    this.miscimagecopy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Miscimagecopy1ItemModel miscimagecopy1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: CustomImageView(
        imagePath: miscimagecopy1ItemModelObj?.image,
        height: 149.v,
        width: 106.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
