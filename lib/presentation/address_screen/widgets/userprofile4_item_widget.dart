import '../models/userprofile4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray10008.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: userprofile4ItemModelObj?.editImage,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 12.v,
                  ),
                ),
                CustomImageView(
                  imagePath: userprofile4ItemModelObj?.userImage,
                  height: 29.v,
                  width: 22.h,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofile4ItemModelObj.sendToText!,
                        style:
                            CustomTextStyles.bodySmallProductSansLightGray90007,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        userprofile4ItemModelObj.myOfficeText!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 22.v),
                  child: Text(
                    userprofile4ItemModelObj.editText!,
                    style: CustomTextStyles.bodySmallProductSansLightRedA70002
                        .copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Text(
              userprofile4ItemModelObj.addressText!,
              style: CustomTextStyles.bodySmallProductSansLightBluegray40001,
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
