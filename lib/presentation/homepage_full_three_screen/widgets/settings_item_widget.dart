import '../models/settings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget(
    this.settingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsItemModel settingsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.outlineGray5006.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGrayTL18,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: settingsItemModelObj?.settingsIcon,
                ),
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                settingsItemModelObj.text!,
                style: CustomTextStyles.bodySmallProductSansLightGray5006,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
