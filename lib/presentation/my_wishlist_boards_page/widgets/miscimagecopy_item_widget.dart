import '../models/miscimagecopy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class MiscimagecopyItemWidget extends StatelessWidget {
  MiscimagecopyItemWidget(
    this.miscimagecopyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MiscimagecopyItemModel miscimagecopyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: CustomImageView(
        imagePath: miscimagecopyItemModelObj?.image,
        height: 149.v,
        width: 106.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
