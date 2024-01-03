import '../models/productcard4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard4ItemWidget extends StatelessWidget {
  Productcard4ItemWidget(
    this.productcard4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard4ItemModel productcard4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: productcard4ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 11.v),
            Text(
              productcard4ItemModelObj.productName!,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard4ItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
