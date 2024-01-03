import '../models/productcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

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
              imagePath: productcard1ItemModelObj?.image,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcard1ItemModelObj.title!,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 6.v),
            Text(
              productcard1ItemModelObj.price!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
