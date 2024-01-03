import '../models/orderdetailslist6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Orderdetailslist6ItemWidget extends StatelessWidget {
  Orderdetailslist6ItemWidget(
    this.orderdetailslist6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetailslist6ItemModel orderdetailslist6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray80001.copyWith(
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
                  orderdetailslist6ItemModelObj.orderNumber!,
                  style: CustomTextStyles.titleMedium18,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslist6ItemModelObj.orderDate!,
                    style: CustomTextStyles.bodyMediumBluegray200,
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
                      orderdetailslist6ItemModelObj.trackingLabel!,
                      style: CustomTextStyles.bodyMediumBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      orderdetailslist6ItemModelObj.trackingNumber!,
                      style: CustomTextStyles.bodyMediumWhiteA700,
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
                    orderdetailslist6ItemModelObj.quantityLabel!,
                    style: CustomTextStyles.bodyMediumBluegray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 4.v,
                  ),
                  child: Text(
                    orderdetailslist6ItemModelObj.quantity!,
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslist6ItemModelObj.subtotalLabel!,
                    style: CustomTextStyles.bodyMediumBluegray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslist6ItemModelObj.subtotal!,
                    style: CustomTextStyles.titleMediumGray5006,
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
                    orderdetailslist6ItemModelObj.deliveryStatus!,
                    style: CustomTextStyles.bodyMediumTeal700,
                  ),
                ),
                CustomOutlinedButton(
                  height: 35.v,
                  width: 100.h,
                  text: "lbl_details".tr,
                  buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
                  buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
