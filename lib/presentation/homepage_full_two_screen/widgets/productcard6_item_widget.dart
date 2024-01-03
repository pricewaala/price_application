import '../models/productcard6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard6ItemWidget extends StatelessWidget {
  Productcard6ItemWidget(
    this.productcard6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard6ItemModel productcard6ItemModelObj;

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
              imagePath: productcard6ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcard6ItemModelObj.titleText!,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard6ItemModelObj.priceText!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
