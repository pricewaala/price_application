import 'bloc/setting_one_bloc.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SettingOneDraweritem extends StatelessWidget {
  const SettingOneDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 53.h),
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
            SizedBox(height: 71.v),
            Padding(
              padding: EdgeInsets.only(right: 82.h),
              child: _buildMyOrder(
                context,
                bagImage: ImageConstant.imgHomeBlueGray200,
                pageTitle: "lbl_homepage".tr,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 82.h),
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
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
            Padding(
              padding: EdgeInsets.only(right: 82.h),
              child: _buildMyOrder(
                context,
                bagImage: ImageConstant.imgBagBlueGray200,
                pageTitle: "lbl_my_order".tr,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 82.h),
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                mainAxisSize: MainAxisSize.max,
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
            Padding(
              padding: EdgeInsets.only(left: 33.h),
              child: Text(
                "lbl_other".tr.toUpperCase(),
                style: CustomTextStyles.titleSmallBluegray200,
              ),
            ),
            SizedBox(height: 25.v),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                right: 95.h,
              ),
              child: BlocSelector<SettingOneBloc, SettingOneState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_setting".tr,
                    contentPadding: EdgeInsets.only(
                      top: 17.v,
                      right: 30.h,
                      bottom: 17.v,
                    ),
                    borderDecoration: SearchViewStyleHelper.fillGrayTL10,
                    fillColor: appTheme.gray90007,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 82.h),
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                mainAxisSize: MainAxisSize.max,
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
              margin: EdgeInsets.only(right: 82.h),
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray90005,
              child: Row(
                mainAxisSize: MainAxisSize.max,
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
            SizedBox(height: 73.v),
            Container(
              margin: EdgeInsets.only(left: 33.h),
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

  /// Common widget
  Widget _buildMyOrder(
    BuildContext context, {
    required String bagImage,
    required String pageTitle,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray90005,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: bagImage,
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
              pageTitle,
              style: CustomTextStyles.titleMediumBluegray200.copyWith(
                color: appTheme.blueGray200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
