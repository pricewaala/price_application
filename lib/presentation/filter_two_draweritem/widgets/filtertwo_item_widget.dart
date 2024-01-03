import '../models/filtertwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FiltertwoItemWidget extends StatelessWidget {
  FiltertwoItemWidget(
    this.filtertwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiltertwoItemModel filtertwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.v,
      width: 99.h,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray5006.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: CustomImageView(
        imagePath: filtertwoItemModelObj?.off,
        height: 14.adaptSize,
        width: 14.adaptSize,
        alignment: Alignment.centerRight,
      ),
    );
  }
}
