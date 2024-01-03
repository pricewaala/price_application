import '../models/orderdetailslist7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Orderdetailslist7ItemWidget extends StatelessWidget {
  Orderdetailslist7ItemWidget(
    this.orderdetailslist7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetailslist7ItemModel orderdetailslist7ItemModelObj;

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
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderdetailslist7ItemModelObj.orderNumber!,
                  style: CustomTextStyles.titleMedium18,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslist7ItemModelObj.orderDate!,
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
                      orderdetailslist7ItemModelObj.trackingNumber!,
                      style: CustomTextStyles.bodyMediumBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      orderdetailslist7ItemModelObj.trackingNumber1!,
                      style: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    orderdetailslist7ItemModelObj.quanlity!,
                    style: CustomTextStyles.bodyMediumBluegray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 4.v,
                  ),
                  child: Text(
                    orderdetailslist7ItemModelObj.quantity!,
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    orderdetailslist7ItemModelObj.subtotal!,
                    style: CustomTextStyles.bodyMediumBluegray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslist7ItemModelObj.subtotal1!,
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
                    orderdetailslist7ItemModelObj.status!,
                    style: CustomTextStyles.bodyMediumRedA70004,
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
