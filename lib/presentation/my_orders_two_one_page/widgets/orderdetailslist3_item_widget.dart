import '../models/orderdetailslist3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Orderdetailslist3ItemWidget extends StatelessWidget {
  Orderdetailslist3ItemWidget(
    this.orderdetailslist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetailslist3ItemModel orderdetailslist3ItemModelObj;

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
                  orderdetailslist3ItemModelObj.orderNumber!,
                  style: CustomTextStyles.titleMediumGray90005,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslist3ItemModelObj.orderDate!,
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
                      orderdetailslist3ItemModelObj.trackingNumber!,
                      style: CustomTextStyles.bodyMediumBluegray40001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      orderdetailslist3ItemModelObj.trackingNumber1!,
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
                    orderdetailslist3ItemModelObj.quanlity!,
                    style: CustomTextStyles.bodyMediumBluegray40001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 4.v,
                  ),
                  child: Text(
                    orderdetailslist3ItemModelObj.quantity!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslist3ItemModelObj.subtotal!,
                    style: CustomTextStyles.bodyMediumBluegray40001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslist3ItemModelObj.subtotal1!,
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
                    orderdetailslist3ItemModelObj.delivered!,
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
