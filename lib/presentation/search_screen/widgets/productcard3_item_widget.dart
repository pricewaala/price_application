import '../models/productcard3_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productcard3ItemWidget extends StatelessWidget {
  Productcard3ItemWidget(
    this.productcard3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard3ItemModel productcard3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: productcard3ItemModelObj?.productImage,
                height: 172.v,
                width: 126.h,
              ),
              SizedBox(height: 11.v),
              Text(
                productcard3ItemModelObj.productName!,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 6.v),
              Text(
                productcard3ItemModelObj.productPrice!,
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
