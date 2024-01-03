import '../models/productcard14_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard14ItemWidget extends StatelessWidget {
  Productcard14ItemWidget(
    this.productcard14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard14ItemModel productcard14ItemModelObj;

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
                    decoration: AppDecoration.outlineGray90007.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            productcard14ItemModelObj.titleText!,
                            style: CustomTextStyles.labelLargeGray5006,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 37.h),
                          child: Text(
                            productcard14ItemModelObj.priceText!,
                            style: CustomTextStyles.titleMediumGray5006,
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
