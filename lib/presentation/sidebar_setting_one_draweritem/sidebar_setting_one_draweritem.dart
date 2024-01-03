import 'bloc/sidebar_setting_one_bloc.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SidebarSettingOneDraweritem extends StatelessWidget {
  const SidebarSettingOneDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 60.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.v),
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
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            "msg_sunieux_gmail_com".tr,
                            style: CustomTextStyles.labelLargeBlack900,
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
                  bagImage: ImageConstant.imgHomeBlueGray4000117x16,
                  homePageText: "lbl_homepage".tr,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 82.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 33.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.fillWhiteA,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchBlueGray40001,
                      height: 17.adaptSize,
                      width: 17.adaptSize,
                      margin: EdgeInsets.only(bottom: 6.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_discover".tr,
                        style: CustomTextStyles.titleMediumBluegray40001,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 82.h),
                child: _buildMyOrder(
                  context,
                  bagImage: ImageConstant.imgBagBlueGray40001,
                  homePageText: "lbl_my_order".tr,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 82.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 33.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.fillWhiteA,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserFillBlueGray40001,
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
                        style: CustomTextStyles.titleMediumBluegray40001,
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
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 95.h,
                ),
                child: BlocSelector<SidebarSettingOneBloc,
                    SidebarSettingOneState, TextEditingController?>(
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
                      borderDecoration: SearchViewStyleHelper.fillGray,
                      fillColor: appTheme.gray10001,
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
                decoration: AppDecoration.fillWhiteA,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLock,
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
                        style: CustomTextStyles.titleMediumBluegray40001,
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
                decoration: AppDecoration.fillWhiteA,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconsInfoCircleLine,
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "lbl_about_us".tr,
                        style: CustomTextStyles.titleMediumBluegray40001,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 73.v),
              Container(
                margin: EdgeInsets.only(left: 33.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 3.v,
                ),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 107.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.outlineBlack9006.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWbsunnyround24px1,
                            height: 22.v,
                            width: 21.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              right: 8.h,
                            ),
                            child: Text(
                              "lbl_light".tr,
                              style: CustomTextStyles.titleSmallBluegray90002,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60.h,
                      margin: EdgeInsets.only(
                        left: 23.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMoon11,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_dark".tr,
                              style: CustomTextStyles.titleSmallBluegray40002,
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
      ),
    );
  }

  /// Common widget
  Widget _buildMyOrder(
    BuildContext context, {
    required String bagImage,
    required String homePageText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA,
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
              homePageText,
              style: CustomTextStyles.titleMediumBluegray40001.copyWith(
                color: appTheme.blueGray40001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
