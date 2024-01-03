import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            CustomImageView(
              imagePath: productcardItemModelObj?.image,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 14.v),
            Text(
              productcardItemModelObj.title!,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                productcardItemModelObj.price!,
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
