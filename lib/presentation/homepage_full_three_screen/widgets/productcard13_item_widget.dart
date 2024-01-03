import '../models/productcard13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard13ItemWidget extends StatelessWidget {
  Productcard13ItemWidget(
    this.productcard13ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard13ItemModel productcard13ItemModelObj;

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
              imagePath: productcard13ItemModelObj?.turtleneckSweater,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcard13ItemModelObj.productName!,
              style: CustomTextStyles.labelLargeGray5006,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard13ItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumGray5006,
            ),
          ],
        ),
      ),
    );
  }
}
