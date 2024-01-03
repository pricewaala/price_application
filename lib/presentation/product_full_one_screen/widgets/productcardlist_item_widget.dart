import '../models/productcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  ProductcardlistItemWidget(
    this.productcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardlistItemModel productcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: productcardlistItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 12.v),
            Text(
              productcardlistItemModelObj.productName!,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 5.v),
            Text(
              productcardlistItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
