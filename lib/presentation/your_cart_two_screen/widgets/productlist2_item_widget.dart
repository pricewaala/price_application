import '../models/productlist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productlist2ItemWidget extends StatelessWidget {
  Productlist2ItemWidget(
    this.productlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist2ItemModel productlist2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray90005.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Row(
        children: [
          Container(
            height: 99.v,
            width: 97.h,
            decoration: AppDecoration.fillGray200.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL201,
            ),
            child: CustomImageView(
              imagePath: productlist2ItemModelObj?.image,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productlist2ItemModelObj.productName!,
                            style:
                                CustomTextStyles.labelLargeProductSansGray5006,
                          ),
                          SizedBox(height: 8.v),
                          Text(
                            productlist2ItemModelObj.productPrice!,
                            style: CustomTextStyles.titleMediumGray5006,
                          ),
                        ],
                      ),
                      Container(
                        height: 20.v,
                        width: 18.h,
                        margin: EdgeInsets.only(bottom: 25.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillBluegray500.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkGray90005,
                          height: 6.v,
                          width: 8.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ],
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
                          productlist2ItemModelObj.productDetails!,
                          style: CustomTextStyles
                              .labelMediumProductSansMediumGray200,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.outlineGray200.copyWith(
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
                                  color: appTheme.gray200,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                bottom: 1.v,
                              ),
                              child: Text(
                                productlist2ItemModelObj.quantity!,
                                style: CustomTextStyles.labelLargeRobotoGray200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: Text(
                                productlist2ItemModelObj.plusSign!,
                                style:
                                    CustomTextStyles.labelLargeRobotoGray200_1,
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
