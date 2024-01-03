import '../models/miscimagecopy2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Miscimagecopy2ItemWidget extends StatelessWidget {
  Miscimagecopy2ItemWidget(
    this.miscimagecopy2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Miscimagecopy2ItemModel miscimagecopy2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: CustomImageView(
        imagePath: miscimagecopy2ItemModelObj?.image,
        height: 149.v,
        width: 106.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
