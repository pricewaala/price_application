import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 61.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Column(
                          children: [
                            _buildAvatarRow(context),
                            SizedBox(height: 58.v),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 23.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 4.v,
                              ),
                              decoration:
                                  AppDecoration.outlineGray10009.copyWith(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            style: CustomTextStyles
                                                .bodyMediumBluegray90004,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowRightBlueGray90004,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 27.v),
                                  Divider(),
                                  SizedBox(height: 21.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 7.h,
                                      right: 13.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserBlueGray200,
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
                                            style: CustomTextStyles
                                                .bodyMediumBluegray90004,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowRightBlueGray90004,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25.v),
                                  Divider(),
                                  SizedBox(height: 21.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 7.h,
                                      right: 14.h,
                                    ),
                                    child: _buildFavoriteRow(
                                      context,
                                      favoriteImage: ImageConstant
                                          .imgTelevisionBlueGray200,
                                      wishlistText: "lbl_voucher".tr,
                                    ),
                                  ),
                                  SizedBox(height: 24.v),
                                  Divider(),
                                  SizedBox(height: 20.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 7.h,
                                      right: 14.h,
                                    ),
                                    child: _buildFavoriteRow(
                                      context,
                                      favoriteImage:
                                          ImageConstant.imgFavoriteBlueGray200,
                                      wishlistText: "lbl_my_wishlist".tr,
                                    ),
                                  ),
                                  SizedBox(height: 25.v),
                                  Divider(),
                                  SizedBox(height: 19.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      right: 14.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSignalBlueGray200,
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
                                            style: CustomTextStyles
                                                .bodyMediumBluegray90004,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowRightBlueGray90004,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(top: 7.v),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25.v),
                                  Divider(),
                                  SizedBox(height: 21.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserBlueGray20021x21,
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
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray90004,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 32.v),
                                  Divider(),
                                ],
                              ),
                            ),
                            SizedBox(height: 76.v),
                            _buildTabBarColumn(context),
                          ],
                        ),
                      ),
                    ),
                  ),
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
        left: 38.h,
        right: 33.h,
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
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 9.v),
                Text(
                  "msg_sunieux_gmail_com".tr,
                  style: CustomTextStyles.bodySmallBlack900,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSearchGray90001,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 22.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 51.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame33104Gray20023x269,
            height: 23.v,
            width: 269.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
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
          margin: EdgeInsets.only(top: 6.v),
        ),
      ],
    );
  }
}
