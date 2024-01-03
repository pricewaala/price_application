import '../models/productcard11_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard11ItemWidget extends StatelessWidget {
  Productcard11ItemWidget(
    this.productcard11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard11ItemModel productcard11ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: productcard11ItemModelObj?.productImage,
            height: 172.v,
            width: 126.h,
          ),
          SizedBox(height: 11.v),
          Text(
            productcard11ItemModelObj.productName!,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 6.v),
          Text(
            productcard11ItemModelObj.productPrice!,
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
