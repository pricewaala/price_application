import '../models/productcardsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardsectionItemWidget extends StatelessWidget {
  ProductcardsectionItemWidget(
    this.productcardsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardsectionItemModel productcardsectionItemModelObj;

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
              imagePath: productcardsectionItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 12.v),
            Text(
              productcardsectionItemModelObj.productName!,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 5.v),
            Text(
              productcardsectionItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
