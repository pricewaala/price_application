import '../models/orderdetailslist5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Orderdetailslist5ItemWidget extends StatelessWidget {
  Orderdetailslist5ItemWidget(
    this.orderdetailslist5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetailslist5ItemModel orderdetailslist5ItemModelObj;

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
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 16.v),
                  child: Text(
                    orderdetailslist5ItemModelObj.orderNumber!,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                Container(
                  width: 67.h,
                  margin: EdgeInsets.only(
                    left: 125.h,
                    top: 2.v,
                  ),
                  child: Text(
                    orderdetailslist5ItemModelObj.orderDate!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray200.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      orderdetailslist5ItemModelObj.trackingNumber!,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      orderdetailslist5ItemModelObj.trackingNumber1!,
                      style: CustomTextStyles.titleSmallWhiteA700,
                    ),
                  ),
                ],
              ),
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
                    orderdetailslist5ItemModelObj.quanlity!,
                    style: CustomTextStyles.titleSmallBluegray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                  ),
                  child: Text(
                    orderdetailslist5ItemModelObj.quantity!,
                    style: CustomTextStyles.titleSmallWhiteA700,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslist5ItemModelObj.subtotal!,
                    style: CustomTextStyles.titleSmallBluegray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslist5ItemModelObj.subtotal1!,
                    style: CustomTextStyles.titleMediumGray5006,
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
                    orderdetailslist5ItemModelObj.price!,
                    style: CustomTextStyles.titleSmallDeeporange800,
                  ),
                ),
                CustomOutlinedButton(
                  height: 35.v,
                  width: 100.h,
                  text: "lbl_details".tr,
                  buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
