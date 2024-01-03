import '../models/productcard7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard7ItemWidget extends StatelessWidget {
  Productcard7ItemWidget(
    this.productcard7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard7ItemModel productcard7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 213.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 66.v,
            width: 213.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 26.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            productcard7ItemModelObj.titleText!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 37.h),
                          child: Text(
                            productcard7ItemModelObj.priceText!,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage6466x66,
                  height: 66.adaptSize,
                  width: 66.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
