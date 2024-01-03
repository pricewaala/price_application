import 'bloc/rate_product_one_one_bloc.dart';
import 'models/rate_product_one_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class RateProductOneOneScreen extends StatelessWidget {
  const RateProductOneOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RateProductOneOneBloc>(
      create: (context) => RateProductOneOneBloc(RateProductOneOneState(
        rateProductOneOneModelObj: RateProductOneOneModel(),
      ))
        ..add(RateProductOneOneInitialEvent()),
      child: RateProductOneOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90007,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_what_is_your_opinion2".tr,
                style: CustomTextStyles.bodyMediumPoppinsWhiteA700,
              ),
              SizedBox(height: 24.v),
              CustomRatingBar(
                initialRating: 4,
                itemSize: 32,
              ),
              SizedBox(height: 69.v),
              Padding(
                padding: EdgeInsets.only(right: 9.h),
                child: BlocSelector<RateProductOneOneBloc,
                    RateProductOneOneState, TextEditingController?>(
                  selector: (state) => state.writeController,
                  builder: (context, writeController) {
                    return CustomTextFormField(
                      controller: writeController,
                      hintText: "msg_would_you_like_to".tr,
                      hintStyle:
                          CustomTextStyles.bodySmallProductSansLightGray10001,
                      textInputAction: TextInputAction.done,
                      maxLines: 13,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 26.h,
                        vertical: 28.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
                      filled: true,
                      fillColor: appTheme.gray90005,
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
                      decoration: AppDecoration.outlineGray2001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserGray200,
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
                      decoration: AppDecoration.outlineGray2001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconsCameraLineGray200,
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
                buttonStyle: CustomButtonStyles.fillGrayTL25,
                buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
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
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_share_your_feedback".tr,
      ),
    );
  }
}
