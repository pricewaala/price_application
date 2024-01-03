import '../models/scrollview1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Scrollview1ItemWidget extends StatelessWidget {
  Scrollview1ItemWidget(
    this.scrollview1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Scrollview1ItemModel scrollview1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineGray20003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            scrollview1ItemModelObj.dynamicText1!,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 9.v),
          Container(
            width: 257.h,
            margin: EdgeInsets.only(right: 11.h),
            child: Text(
              scrollview1ItemModelObj.dynamicText2!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumRobotoGray70002.copyWith(
                height: 1.54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
