import '../models/productlist3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productlist3ItemWidget extends StatelessWidget {
  Productlist3ItemWidget(
    this.productlist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist3ItemModel productlist3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 28.h,
                top: 49.v,
              ),
              child: Text(
                productlist3ItemModelObj.title!,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 53.v,
                      bottom: 52.v,
                    ),
                    child: Text(
                      productlist3ItemModelObj.subtitle!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                    height: 125.v,
                    width: 109.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 3.h),
                            padding: EdgeInsets.all(14.h),
                            decoration: AppDecoration.fillBluegray600.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder45,
                            ),
                            child: Container(
                              height: 63.adaptSize,
                              width: 63.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray600,
                                borderRadius: BorderRadius.circular(
                                  31.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: productlist3ItemModelObj?.image,
                          height: 125.v,
                          width: 109.h,
                          radius: BorderRadius.circular(
                            15.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
