import '../models/userprofile10_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  Userprofile10ItemWidget(
    this.userprofile10ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile10ItemModel userprofile10ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      width: 94.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: userprofile10ItemModelObj?.userImage,
            height: 22.v,
            width: 36.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              userprofile10ItemModelObj.cash!,
              style: CustomTextStyles.bodySmallPoppinsBluegray50001,
            ),
          ),
        ],
      ),
    );
  }
}
