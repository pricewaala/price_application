import '../models/orderdetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class OrderdetailslistItemWidget extends StatelessWidget {
  OrderdetailslistItemWidget(
    this.orderdetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailslistItemModel orderdetailslistItemModelObj;

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
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderdetailslistItemModelObj.orderNumber!,
                  style: CustomTextStyles.titleMediumGray90005,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslistItemModelObj.orderDate!,
                    style: CustomTextStyles.bodyMediumBluegray40001,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      orderdetailslistItemModelObj.trackingLabel!,
                      style: CustomTextStyles.bodyMediumBluegray40001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      orderdetailslistItemModelObj.trackingNumber!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    orderdetailslistItemModelObj.quantityLabel!,
                    style: CustomTextStyles.bodyMediumBluegray40001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 4.v,
                  ),
                  child: Text(
                    orderdetailslistItemModelObj.quantity!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslistItemModelObj.subtotalLabel!,
                    style: CustomTextStyles.bodyMediumBluegray40001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslistItemModelObj.subtotal!,
                    style: CustomTextStyles.titleMediumGray90005_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    orderdetailslistItemModelObj.deliveryStatus!,
                    style: CustomTextStyles.bodyMediumTeal700,
                  ),
                ),
                CustomOutlinedButton(
                  height: 35.v,
                  width: 100.h,
                  text: "lbl_details".tr,
                  buttonTextStyle: theme.textTheme.bodyMedium!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
