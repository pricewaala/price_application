import '../models/productlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  Productlist1ItemWidget(
    this.productlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist1ItemModel productlist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray5007.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Row(
        children: [
          Container(
            height: 99.v,
            width: 97.h,
            decoration: AppDecoration.fillGray40005.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL201,
            ),
            child: CustomImageView(
              imagePath: productlist1ItemModelObj?.image,
              height: 99.v,
              width: 97.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 16.v,
              bottom: 12.v,
            ),
            child: Column(
              children: [
                Container(
                  width: 178.h,
                  margin: EdgeInsets.only(right: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          productlist1ItemModelObj.title!,
                          style: CustomTextStyles.labelLargeProductSans,
                        ),
                      ),
                      Container(
                        height: 20.v,
                        width: 18.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillBluegray500.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 6.v,
                          width: 8.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    productlist1ItemModelObj.price!,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 182.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.v),
                        child: Text(
                          productlist1ItemModelObj.sizeColor!,
                          style: CustomTextStyles
                              .labelMediumProductSansMediumBluegray40004,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.outlineBlack9001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 9.v,
                                bottom: 5.v,
                              ),
                              child: SizedBox(
                                child: Divider(
                                  color: appTheme.black900.withOpacity(0.5),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                bottom: 1.v,
                              ),
                              child: Text(
                                productlist1ItemModelObj.quantity!,
                                style: CustomTextStyles
                                    .labelLargeRobotoBlack900Bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: Text(
                                productlist1ItemModelObj.addButton!,
                                style:
                                    CustomTextStyles.labelLargeRobotoBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
