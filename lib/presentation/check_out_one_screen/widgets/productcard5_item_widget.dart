import '../models/productcard5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard5ItemWidget extends StatelessWidget {
  Productcard5ItemWidget(
    this.productcard5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard5ItemModel productcard5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77.v,
      width: 311.h,
      padding: EdgeInsets.symmetric(vertical: 1.v),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 75.v,
              width: 311.h,
              decoration: BoxDecoration(
                color: appTheme.gray5001,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                bottom: 11.v,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 20.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray500,
                        width: 8.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                productcard5ItemModelObj.freeText!,
                                style: CustomTextStyles
                                    .bodyMediumOnPrimaryContainer,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.h),
                              child: Text(
                                productcard5ItemModelObj.deliveryText!,
                                style: CustomTextStyles.bodyMediumGray60002,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          productcard5ItemModelObj.deliveryText1!,
                          style:
                              CustomTextStyles.bodySmallProductSansLightGray500,
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
