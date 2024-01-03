import '../models/productcard9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard9ItemWidget extends StatelessWidget {
  Productcard9ItemWidget(
    this.productcard9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard9ItemModel productcard9ItemModelObj;

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
              imagePath: productcard9ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcard9ItemModelObj.productName!,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard9ItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
