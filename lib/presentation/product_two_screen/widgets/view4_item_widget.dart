import '../models/view4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class View4ItemWidget extends StatelessWidget {
  View4ItemWidget(
    this.view4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  View4ItemModel view4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Opacity(
        opacity: 0.2,
        child: Container(
          height: 234.adaptSize,
          width: 234.adaptSize,
          margin: EdgeInsets.fromLTRB(51.h, 34.v, 28.h, 67.v),
          decoration: BoxDecoration(
            color: appTheme.deepOrange1006c,
            borderRadius: BorderRadius.circular(
              117.h,
            ),
          ),
        ),
      ),
    );
  }
}
