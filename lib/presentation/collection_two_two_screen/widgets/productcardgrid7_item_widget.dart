import '../models/productcardgrid7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productcardgrid7ItemWidget extends StatelessWidget {
  Productcardgrid7ItemWidget(
    this.productcardgrid7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardgrid7ItemModel productcardgrid7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 186.v,
            width: 141.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: productcardgrid7ItemModelObj?.productImage,
                  height: 186.v,
                  width: 141.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    right: 8.h,
                  ),
                  child: CustomIconButton(
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: productcardgrid7ItemModelObj?.favoriteIcon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            productcardgrid7ItemModelObj.productName!,
            style: CustomTextStyles.bodySmallGray5006,
          ),
          SizedBox(height: 6.v),
          Text(
            productcardgrid7ItemModelObj.productPrice!,
            style: CustomTextStyles.titleMediumGray5006,
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  productcardgrid7ItemModelObj.productRatingCount!,
                  style: CustomTextStyles.bodySmallProductSansLightGray500610,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
