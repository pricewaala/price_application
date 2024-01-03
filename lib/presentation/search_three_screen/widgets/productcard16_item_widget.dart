import '../models/productcard16_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard16ItemWidget extends StatelessWidget {
  Productcard16ItemWidget(
    this.productcard16ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard16ItemModel productcard16ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: productcard16ItemModelObj?.productImage,
            height: 172.v,
            width: 126.h,
          ),
          SizedBox(height: 11.v),
          Text(
            productcard16ItemModelObj.productName!,
            style: CustomTextStyles.bodySmallGray5006,
          ),
          SizedBox(height: 6.v),
          Text(
            productcard16ItemModelObj.productPrice!,
            style: CustomTextStyles.titleMediumGray5006,
          ),
        ],
      ),
    );
  }
}
