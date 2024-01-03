import '../models/orderdetailslist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Orderdetailslist2ItemWidget extends StatelessWidget {
  Orderdetailslist2ItemWidget(
    this.orderdetailslist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderdetailslist2ItemModel orderdetailslist2ItemModelObj;

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
                        orderdetailslist2ItemModelObj.orderNumber!,
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
                        orderdetailslist2ItemModelObj.orderDate!,
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
                        orderdetailslist2ItemModelObj.trackingNumber!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        orderdetailslist2ItemModelObj.trackingNumber1!,
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
                    orderdetailslist2ItemModelObj.quanlity!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                  ),
                  child: Text(
                    orderdetailslist2ItemModelObj.quantity!,
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
                    orderdetailslist2ItemModelObj.subtotal!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    orderdetailslist2ItemModelObj.subtotal1!,
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
                    orderdetailslist2ItemModelObj.price!,
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
