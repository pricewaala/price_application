import '../models/productcard8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard8ItemWidget extends StatelessWidget {
  Productcard8ItemWidget(
    this.productcard8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard8ItemModel productcard8ItemModelObj;

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
              imagePath: productcard8ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcard8ItemModelObj.titleText!,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard8ItemModelObj.priceText!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
