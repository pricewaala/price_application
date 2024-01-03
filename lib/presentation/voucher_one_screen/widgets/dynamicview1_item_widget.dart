import '../models/dynamicview1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Dynamicview1ItemWidget extends StatelessWidget {
  Dynamicview1ItemWidget(
    this.dynamicview1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Dynamicview1ItemModel dynamicview1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 3.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup850,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomElevatedButton(
            height: 68.v,
            width: 68.h,
            text: "lbl_502".tr,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 7.v,
              bottom: 7.v,
            ),
            buttonStyle: CustomButtonStyles.fillGrayTL8,
            buttonTextStyle: CustomTextStyles.titleLargeBold,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dynamicview1ItemModelObj.text1!,
                  style: CustomTextStyles.titleMediumGray5006,
                ),
                SizedBox(height: 6.v),
                Text(
                  dynamicview1ItemModelObj.text2!,
                  style: CustomTextStyles.labelLargeGray10001,
                ),
                SizedBox(height: 8.v),
                Text(
                  dynamicview1ItemModelObj.text3!,
                  style: CustomTextStyles.titleSmallProductSansGray5006,
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 82.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.gray200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              children: [
                Text(
                  dynamicview1ItemModelObj.text4!,
                  style: CustomTextStyles.labelLargeBluegray200,
                ),
                SizedBox(height: 15.v),
                Text(
                  dynamicview1ItemModelObj.text5!,
                  style: CustomTextStyles.labelLargeWhiteA700,
                ),
                SizedBox(height: 2.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    dynamicview1ItemModelObj.text6!,
                    style: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
