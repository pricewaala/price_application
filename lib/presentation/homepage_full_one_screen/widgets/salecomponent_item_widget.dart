import '../models/salecomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SalecomponentItemWidget extends StatelessWidget {
  SalecomponentItemWidget(
    this.salecomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SalecomponentItemModel salecomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray5004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12.v,
                      width: 1.h,
                      margin: EdgeInsets.only(bottom: 2.v),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray40001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        salecomponentItemModelObj.text!,
                        style: CustomTextStyles
                            .bodySmallProductSansLightBluegray40001,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  width: 93.h,
                  child: Text(
                    salecomponentItemModelObj.text1!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles
                        .titleLargeProductSansLightBluegray40001_1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 86.adaptSize,
            width: 86.adaptSize,
            margin: EdgeInsets.only(
              left: 75.h,
              top: 3.v,
              bottom: 8.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray20002,
              borderRadius: BorderRadius.circular(
                43.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
