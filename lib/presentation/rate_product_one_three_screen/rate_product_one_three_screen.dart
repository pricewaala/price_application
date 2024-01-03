import 'bloc/rate_product_one_three_bloc.dart';
import 'models/rate_product_one_three_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class RateProductOneThreeScreen extends StatelessWidget {
  const RateProductOneThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RateProductOneThreeBloc>(
      create: (context) => RateProductOneThreeBloc(RateProductOneThreeState(
        rateProductOneThreeModelObj: RateProductOneThreeModel(),
      ))
        ..add(RateProductOneThreeInitialEvent()),
      child: RateProductOneThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5007,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 26.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_what_is_your_opinion2".tr,
                style: CustomTextStyles.bodyMediumPoppinsGray90009,
              ),
              SizedBox(height: 24.v),
              CustomRatingBar(
                initialRating: 4,
                itemSize: 32,
              ),
              SizedBox(height: 69.v),
              Padding(
                padding: EdgeInsets.only(right: 9.h),
                child: BlocSelector<RateProductOneThreeBloc,
                    RateProductOneThreeState, TextEditingController?>(
                  selector: (state) => state.writeController,
                  builder: (context, writeController) {
                    return CustomTextFormField(
                      controller: writeController,
                      hintText: "msg_would_you_like_to".tr,
                      hintStyle:
                          CustomTextStyles.bodySmallProductSansLightGray700,
                      textInputAction: TextInputAction.done,
                      maxLines: 13,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 26.h,
                        vertical: 28.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillWhiteATL20,
                      filled: true,
                      fillColor: appTheme.whiteA700,
                    );
                  },
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: 64.v,
                      width: 69.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.outlineBluegray10004.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      height: 64.v,
                      width: 69.h,
                      margin: EdgeInsets.only(left: 24.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.outlineBluegray10004.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconsCameraLine,
                        height: 33.adaptSize,
                        width: 33.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "lbl_send_feedback".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "msg_share_your_feedback".tr,
      ),
    );
  }
}
