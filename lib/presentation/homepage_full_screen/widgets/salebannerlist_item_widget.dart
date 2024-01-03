import '../models/salebannerlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SalebannerlistItemWidget extends StatelessWidget {
  SalebannerlistItemWidget(
    this.salebannerlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SalebannerlistItemModel salebannerlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillGray5004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 12.v,
                      width: 1.h,
                      margin: EdgeInsets.only(bottom: 5.v),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray40001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        salebannerlistItemModelObj.text!,
                        style: CustomTextStyles
                            .bodySmallProductSansLightBluegray40001Light,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  width: 87.h,
                  child: Text(
                    salebannerlistItemModelObj.text1!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles
                        .titleLargeProductSansLightBluegray40001,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 86.adaptSize,
            width: 86.adaptSize,
            margin: EdgeInsets.only(
              left: 83.h,
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
