import '../models/widget2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Widget2ItemWidget extends StatelessWidget {
  Widget2ItemWidget(
    this.widget2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget2ItemModel widget2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: widget2ItemModelObj?.image,
          height: 149.v,
          width: 106.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
