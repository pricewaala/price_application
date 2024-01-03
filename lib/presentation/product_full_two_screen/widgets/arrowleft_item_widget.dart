import '../models/arrowleft_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ArrowleftItemWidget extends StatelessWidget {
  ArrowleftItemWidget(
    this.arrowleftItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArrowleftItemModel arrowleftItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4.v),
                child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftGray90005,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.v),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFavoriteWhiteA700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 67.v),
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 234.adaptSize,
                width: 234.adaptSize,
                margin: EdgeInsets.only(right: 28.h),
                decoration: BoxDecoration(
                  color: appTheme.deepOrange1006c,
                  borderRadius: BorderRadius.circular(
                    117.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
