import '../models/productcard12_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard12ItemWidget extends StatelessWidget {
  Productcard12ItemWidget(
    this.productcard12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard12ItemModel productcard12ItemModelObj;

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
              imagePath: productcard12ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 11.v),
            Text(
              productcard12ItemModelObj.productName!,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard12ItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
