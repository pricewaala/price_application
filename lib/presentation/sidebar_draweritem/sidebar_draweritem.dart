import 'bloc/sidebar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SidebarDraweritem extends StatelessWidget {
  const SidebarDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 293.h,
        padding: EdgeInsets.symmetric(vertical: 60.v),
        decoration: AppDecoration.fillGray90005.copyWith(
          borderRadius: BorderRadiusStyle.customBorderLR30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 52.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar,
                      height: 52.adaptSize,
                      width: 52.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 5.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_sunie_pham".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            "msg_sunieux_gmail_com".tr,
                            style: CustomTextStyles.labelLargeWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 71.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray90007.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHomeWhiteA700,
                    height: 17.v,
                    width: 16.h,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 9.v,
                    ),
                    child: Text(
                      "lbl_homepage".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSearchBlueGray20017x17,
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    margin: EdgeInsets.only(bottom: 6.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_discover".tr,
                      style: CustomTextStyles.titleMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBagBlueGray200,
                    height: 18.v,
                    width: 16.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_my_order".tr,
                      style: CustomTextStyles.titleMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLockBlueGray200,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_my_profile".tr,
                      style: CustomTextStyles.titleMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Text(
                  "lbl_other".tr.toUpperCase(),
                  style: CustomTextStyles.titleSmallBluegray200,
                ),
              ),
            ),
            SizedBox(height: 25.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSearchBlueGray200,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "lbl_setting".tr,
                      style: CustomTextStyles.titleMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLockBlueGray20023x23,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_support".tr,
                      style: CustomTextStyles.titleMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconsInfoCircleLineBlueGray200,
                    height: 21.adaptSize,
                    width: 21.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_about_us".tr,
                      style: CustomTextStyles.titleMediumBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 71.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 33.h),
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillGray90007.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 57.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgWbSunnyRound24px,
                          height: 22.v,
                          width: 21.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 4.v,
                          ),
                          child: Text(
                            "lbl_light".tr,
                            style: CustomTextStyles.titleSmallGray200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 101.h,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 1.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.outlineBlack90011.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMobileGray10001,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "lbl_dark".tr,
                            style: CustomTextStyles.titleSmallGray10001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
