import 'bloc/password_changed_bloc.dart';
import 'models/password_changed_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PasswordChangedBottomsheet extends StatelessWidget {
  const PasswordChangedBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PasswordChangedBloc>(
      create: (context) => PasswordChangedBloc(PasswordChangedState(
        passwordChangedModelObj: PasswordChangedModel(),
      ))
        ..add(PasswordChangedInitialEvent()),
      child: PasswordChangedBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBrowseHome(context);
  }

  /// Section Widget
  Widget _buildBrowseHome(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 27.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL41,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100.adaptSize,
              width: 100.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.fillGray5007.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder50,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgProfile,
                height: 57.v,
                width: 46.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 22.v),
            Text(
              "msg_your_password_has".tr,
              style: CustomTextStyles.titleMediumProductSansMediumGray90008,
            ),
            SizedBox(height: 13.v),
            Opacity(
              opacity: 0.6,
              child: Text(
                "msg_welcome_back_discover".tr,
                style: CustomTextStyles.labelLargeGray90008,
              ),
            ),
            SizedBox(height: 19.v),
            CustomElevatedButton(
              height: 60.v,
              text: "lbl_browse_home".tr,
              buttonStyle: CustomButtonStyles.fillBlackTL30,
            ),
            SizedBox(height: 55.v),
          ],
        ),
      ),
    );
  }
}
