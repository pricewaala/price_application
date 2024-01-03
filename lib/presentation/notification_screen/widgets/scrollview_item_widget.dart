import '../models/scrollview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ScrollviewItemWidget extends StatelessWidget {
  ScrollviewItemWidget(
    this.scrollviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ScrollviewItemModel scrollviewItemModelObj;

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
            scrollviewItemModelObj.dynamicText1!,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 9.v),
          Container(
            width: 257.h,
            margin: EdgeInsets.only(right: 11.h),
            child: Text(
              scrollviewItemModelObj.dynamicText2!,
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
