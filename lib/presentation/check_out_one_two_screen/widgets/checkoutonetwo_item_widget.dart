import '../models/checkoutonetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutonetwoItemWidget extends StatelessWidget {
  CheckoutonetwoItemWidget(
    this.checkoutonetwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckoutonetwoItemModel checkoutonetwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.v,
      width: 311.h,
      decoration: BoxDecoration(
        color: appTheme.gray90007,
      ),
    );
  }
}
