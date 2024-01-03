import '../models/widget1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  Widget1ItemWidget(
    this.widget1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget1ItemModel widget1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: widget1ItemModelObj?.image,
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
