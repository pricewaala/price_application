import '../models/productcard17_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard17ItemWidget extends StatelessWidget {
  Productcard17ItemWidget(
    this.productcard17ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard17ItemModel productcard17ItemModelObj;

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
              imagePath: productcard17ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 11.v),
            Text(
              productcard17ItemModelObj.productName!,
              style: CustomTextStyles.bodySmallGray5006,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard17ItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumGray5006,
            ),
          ],
        ),
      ),
    );
  }
}
