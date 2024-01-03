import 'bloc/profile_one_bloc.dart';
import 'models/profile_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

class ProfileOneScreen extends StatelessWidget {
  const ProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileOneBloc>(
      create: (context) => ProfileOneBloc(ProfileOneState(
        profileOneModelObj: ProfileOneModel(),
      ))
        ..add(ProfileOneInitialEvent()),
      child: ProfileOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileOneBloc, ProfileOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90005,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildAvatarRow(context),
                  SizedBox(height: 58.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.outlineGray90006.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            right: 13.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLinkedin,
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  bottom: 3.v,
                                ),
                                child: Text(
                                  "lbl_address".tr,
                                  style: CustomTextStyles.bodyMediumWhiteA700,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowRightWhiteA70020x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 27.v),
                        Divider(
                          color: appTheme.gray90005,
                        ),
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            right: 13.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserBlueGray200,
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 9.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "lbl_payment_method".tr,
                                  style: CustomTextStyles.bodyMediumWhiteA700,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowRightWhiteA70020x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Divider(
                          color: appTheme.gray90005,
                        ),
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            right: 14.h,
                          ),
                          child: _buildFavoriteRow(
                            context,
                            favoriteImage:
                                ImageConstant.imgTelevisionBlueGray200,
                            wishlistText: "lbl_voucher".tr,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Divider(
                          color: appTheme.gray90005,
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            right: 14.h,
                          ),
                          child: _buildFavoriteRow(
                            context,
                            favoriteImage: ImageConstant.imgFavoriteBlueGray200,
                            wishlistText: "lbl_my_wishlist".tr,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Divider(
                          color: appTheme.gray90005,
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            right: 14.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSignalBlueGray200,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 9.h,
                                  top: 5.v,
                                  bottom: 4.v,
                                ),
                                child: Text(
                                  "lbl_rate_this_app".tr,
                                  style: CustomTextStyles.bodyMediumWhiteA700,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowRightWhiteA70020x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(top: 7.v),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Divider(
                          color: appTheme.gray90005,
                        ),
                        SizedBox(height: 21.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUserBlueGray20021x21,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 3.v,
                                  ),
                                  child: Text(
                                    "lbl_log_out".tr,
                                    style: CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Divider(
                          color: appTheme.gray90005,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAvatarRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 9.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 68.adaptSize,
            width: 68.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 12.v,
              bottom: 12.v,
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
                  style: CustomTextStyles.bodySmallWhiteA700_1,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSearchGray5006,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 22.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray90005,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame33104Gray8000123x269,
        height: 23.v,
        width: 269.h,
        margin: EdgeInsets.fromLTRB(53.h, 24.v, 51.h, 32.v),
      ),
    );
  }

  /// Common widget
  Widget _buildFavoriteRow(
    BuildContext context, {
    required String favoriteImage,
    required String wishlistText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: favoriteImage,
          height: 21.adaptSize,
          width: 21.adaptSize,
          margin: EdgeInsets.only(bottom: 5.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 2.v,
            bottom: 6.v,
          ),
          child: Text(
            wishlistText,
            style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightWhiteA70020x20,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 6.v),
        ),
      ],
    );
  }
}
