import '../models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray5003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.v),
                      child: Text(
                        orderdetailsItemModelObj.orderNumberText!,
                        style: CustomTextStyles.titleMediumGray90005,
                      ),
                    ),
                    Container(
                      width: 67.h,
                      margin: EdgeInsets.only(
                        left: 125.h,
                        top: 2.v,
                      ),
                      child: Text(
                        orderdetailsItemModelObj.orderDateText!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        orderdetailsItemModelObj.trackingNumber!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        orderdetailsItemModelObj.trackingNumberText!,
                        style: CustomTextStyles.titleSmallBlack900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 8.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    orderdetailsItemModelObj.quanlity!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                  ),
                  child: Text(
                    orderdetailsItemModelObj.quantityText!,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailsItemModelObj.subtotal!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailsItemModelObj.subtotalText!,
                    style: CustomTextStyles.titleMediumGray90005_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    orderdetailsItemModelObj.priceText!,
                    style: CustomTextStyles.titleSmallDeeporange800,
                  ),
                ),
                CustomOutlinedButton(
                  height: 35.v,
                  width: 100.h,
                  text: "lbl_details".tr,
                  buttonTextStyle: CustomTextStyles.titleSmallBlack900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
