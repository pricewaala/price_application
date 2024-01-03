import 'bloc/sidebar_home_one_bloc.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SidebarHomeOneDraweritem extends StatelessWidget {
  const SidebarHomeOneDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 293.h,
        padding: EdgeInsets.symmetric(vertical: 58.v),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderLR30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.v),
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
            ),
            SizedBox(height: 71.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray10001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHome,
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
                      style: CustomTextStyles.titleMediumBlack900,
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
              decoration: AppDecoration.fillWhiteA,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBagBlueGray40001,
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
                      style: CustomTextStyles.titleMediumBluegray40001,
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
              decoration: AppDecoration.fillWhiteA,
              child: Row(
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Text(
                  "lbl_other".tr.toUpperCase(),
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(height: 25.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSearch,
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
                      style: CustomTextStyles.titleMediumBluegray40001,
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
              decoration: AppDecoration.fillWhiteA,
              child: Row(
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
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Row(
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
              margin: EdgeInsets.symmetric(horizontal: 33.h),
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
                  BlocSelector<SidebarHomeOneBloc, SidebarHomeOneState,
                      TextEditingController?>(
                    selector: (state) => state.lightController,
                    builder: (context, lightController) {
                      return CustomTextFormField(
                        width: 107.h,
                        controller: lightController,
                        hintText: "lbl_light".tr,
                        hintStyle: CustomTextStyles.titleSmallBluegray90002,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(19.h, 4.v, 8.h, 4.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgWbsunnyround24px1,
                            height: 22.v,
                            width: 21.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 30.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 6.v,
                          right: 27.h,
                          bottom: 6.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                        filled: true,
                        fillColor: appTheme.gray50,
                      );
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMoon11,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(
                      left: 23.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 6.v,
                      bottom: 6.v,
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
    );
  }
}
