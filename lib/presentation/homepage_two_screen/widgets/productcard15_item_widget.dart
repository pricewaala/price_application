import '../models/productcard15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard15ItemWidget extends StatelessWidget {
  Productcard15ItemWidget(
    this.productcard15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard15ItemModel productcard15ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: productcard15ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcard15ItemModelObj.titleText!,
              style: CustomTextStyles.labelLargeGray5006,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard15ItemModelObj.priceText!,
              style: CustomTextStyles.titleMediumGray5006,
            ),
          ],
        ),
      ),
    );
  }
}
