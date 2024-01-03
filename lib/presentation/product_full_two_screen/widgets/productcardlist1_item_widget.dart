import '../models/productcardlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcardlist1ItemWidget extends StatelessWidget {
  Productcardlist1ItemWidget(
    this.productcardlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardlist1ItemModel productcardlist1ItemModelObj;

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
              imagePath: productcardlist1ItemModelObj?.productImage,
              height: 172.v,
              width: 126.h,
            ),
            SizedBox(height: 12.v),
            Text(
              productcardlist1ItemModelObj.productName!,
              style: CustomTextStyles.bodySmallGray5006,
            ),
            SizedBox(height: 5.v),
            Text(
              productcardlist1ItemModelObj.productPrice!,
              style: CustomTextStyles.titleMediumGray5006,
            ),
          ],
        ),
      ),
    );
  }
}
