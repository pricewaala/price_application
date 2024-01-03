import 'bloc/add_new_card_two_bloc.dart';
import 'models/add_new_card_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class AddNewCardTwoScreen extends StatelessWidget {
  const AddNewCardTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewCardTwoBloc>(
      create: (context) => AddNewCardTwoBloc(AddNewCardTwoState(
        addNewCardTwoModelObj: AddNewCardTwoModel(),
      ))
        ..add(AddNewCardTwoInitialEvent()),
      child: AddNewCardTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 23.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildCardNumberStack(context),
                  SizedBox(height: 28.v),
                  _buildCvv(context),
                  SizedBox(height: 56.v),
                  CustomElevatedButton(
                    width: 203.h,
                    text: "lbl_add_card".tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL25,
                    buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFour(
        text: "lbl_add_new_card".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumberColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_card_number".tr,
              style: CustomTextStyles.bodySmallPoppinsGray200,
            ),
            SizedBox(height: 11.v),
            BlocSelector<AddNewCardTwoBloc, AddNewCardTwoState,
                TextEditingController?>(
              selector: (state) => state.cardNumberController,
              builder: (context, cardNumberController) {
                return CustomTextFormField(
                  controller: cardNumberController,
                  hintText: "msg_5412363272837284".tr,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsGray5006,
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL13,
                  filled: true,
                  fillColor: appTheme.gray90007,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 100.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_cardholder_name2".tr,
              style: CustomTextStyles.bodySmallPoppinsGray200,
            ),
            SizedBox(height: 11.v),
            BlocSelector<AddNewCardTwoBloc, AddNewCardTwoState,
                TextEditingController?>(
              selector: (state) => state.nameController,
              builder: (context, nameController) {
                return CustomTextFormField(
                  controller: nameController,
                  hintText: "lbl_sunie_pham".tr,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsGray5006,
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL13,
                  filled: true,
                  fillColor: appTheme.gray90007,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumberStack(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 411.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 383.v,
                  width: 488.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 191.v,
                          width: 327.h,
                          margin: EdgeInsets.only(right: 24.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              14.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0, 0.5),
                              end: Alignment(1, 0.5),
                              colors: [
                                appTheme.orangeA200,
                                appTheme.amber30002,
                              ],
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCard,
                        height: 191.v,
                        width: 327.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 24.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShape,
                        height: 310.v,
                        width: 488.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShape,
                        height: 322.v,
                        width: 271.h,
                        alignment: Alignment.topRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShape14x13,
                        height: 14.v,
                        width: 13.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 14.v,
                          right: 163.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShape,
                        height: 309.v,
                        width: 364.h,
                        alignment: Alignment.centerRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage47,
                        height: 48.v,
                        width: 61.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 12.v,
                          right: 43.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 38.v,
                            right: 39.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShape35x35,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                margin: EdgeInsets.only(left: 56.h),
                              ),
                              SizedBox(height: 25.v),
                              Padding(
                                padding: EdgeInsets.only(right: 27.h),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl2".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 28.h),
                                      child: Text(
                                        "lbl2".tr,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 28.h),
                                      child: Text(
                                        "lbl2".tr,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 28.h),
                                      child: Text(
                                        "lbl2".tr,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 24.v),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_cardholder_name".tr,
                                        style: theme.textTheme.labelSmall,
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_name".tr,
                                        style: CustomTextStyles.labelMedium_1,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 120.h),
                                    child: Column(
                                      children: [
                                        Text(
                                          "lbl_valid_thru".tr,
                                          style: theme.textTheme.labelSmall,
                                        ),
                                        SizedBox(height: 4.v),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "lbl_mm_yy".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildCardNumberColumn(context),
              _buildNameColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExpiresColumn(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 1.v,
          right: 15.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_expires".tr,
              style: CustomTextStyles.bodySmallPoppinsGray200,
            ),
            SizedBox(height: 10.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillGray90007.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL13,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "lbl_03_23".tr,
                      style: CustomTextStyles.bodyMediumPoppinsGray5006,
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

  /// Section Widget
  Widget _buildCvvColumn(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_cvv".tr,
              style: CustomTextStyles.bodySmallPoppinsGray200,
            ),
            SizedBox(height: 11.v),
            BlocSelector<AddNewCardTwoBloc, AddNewCardTwoState,
                TextEditingController?>(
              selector: (state) => state.cvvController,
              builder: (context, cvvController) {
                return CustomTextFormField(
                  width: 142.h,
                  controller: cvvController,
                  hintText: "lbl_999".tr,
                  hintStyle: CustomTextStyles.bodyMediumPoppinsGray5006,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL13,
                  filled: true,
                  fillColor: appTheme.gray90007,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildExpiresColumn(context),
          _buildCvvColumn(context),
        ],
      ),
    );
  }
}
