import 'bloc/setting_two_bloc.dart';
import 'models/setting_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class SettingTwoScreen extends StatelessWidget {
  const SettingTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingTwoBloc>(
      create: (context) => SettingTwoBloc(SettingTwoState(
        settingTwoModelObj: SettingTwoModel(),
      ))
        ..add(SettingTwoInitialEvent()),
      child: SettingTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingTwoBloc, SettingTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 48.v),
                child: _buildSettingTwo(context),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 20.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_setting".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 31.h,
        bottom: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconsGlobeLine,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "lbl_language".tr,
                    style: CustomTextStyles.bodyMediumBluegray90004,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlueGray90004,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          Divider(),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildFrame(
              context,
              image: ImageConstant.imgBellDuotone,
              text: "lbl_notification".tr,
            ),
          ),
          SizedBox(height: 28.v),
          Divider(
            indent: 3.h,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconsMedicalChartLine,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_terms_of_use".tr,
                    style: CustomTextStyles.bodyMediumBluegray90004,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlueGray90004,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          Divider(
            indent: 3.h,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildFrame(
              context,
              image: ImageConstant.imgIconsInfoCircleLine,
              text: "lbl_pricavy_policy".tr,
            ),
          ),
          SizedBox(height: 28.v),
          Divider(
            indent: 3.h,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 19.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconsLocationArrowLine,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_chat_support".tr,
                    style: CustomTextStyles.bodyMediumBluegray90004,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlueGray90004,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Divider(
            indent: 3.h,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: image,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 5.v,
          ),
          child: Text(
            text,
            style: CustomTextStyles.bodyMediumBluegray90004.copyWith(
              color: appTheme.blueGray90004,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray90004,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
      ],
    );
  }
}
