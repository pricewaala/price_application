import 'bloc/rate_product_one_two_bloc.dart';
import 'models/rate_product_one_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RateProductOneTwoDialog extends StatelessWidget {
  const RateProductOneTwoDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RateProductOneTwoBloc>(
      create: (context) => RateProductOneTwoBloc(RateProductOneTwoState(
        rateProductOneTwoModelObj: RateProductOneTwoModel(),
      ))
        ..add(RateProductOneTwoInitialEvent()),
      child: RateProductOneTwoDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray90005.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkBlueGray50081x81,
            height: 81.adaptSize,
            width: 81.adaptSize,
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_thank_you_for_your2".tr,
            style: CustomTextStyles.titleMediumGray5006,
          ),
          SizedBox(height: 26.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 247.h,
              margin: EdgeInsets.only(right: 9.h),
              child: Text(
                "msg_we_appreciated_your".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumGray200.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            height: 30.v,
            width: 101.h,
            text: "lbl_done".tr,
            buttonStyle: CustomButtonStyles.fillGrayTL15,
            buttonTextStyle: CustomTextStyles.titleSmallProductSansGray90005,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
