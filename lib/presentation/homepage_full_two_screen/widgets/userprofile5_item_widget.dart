import '../models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

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
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder21,
              ),
              child: CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillBlueGray,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: userprofile5ItemModelObj?.dynamicImage,
                ),
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                userprofile5ItemModelObj.dynamicText!,
                style: CustomTextStyles.bodySmallProductSansLightBluegray900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
