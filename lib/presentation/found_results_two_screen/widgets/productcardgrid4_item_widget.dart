import '../models/productcardgrid4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productcardgrid4ItemWidget extends StatelessWidget {
  Productcardgrid4ItemWidget(
    this.productcardgrid4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardgrid4ItemModel productcardgrid4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 186.v,
          width: 141.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: productcardgrid4ItemModelObj?.productImage,
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
                  decoration: IconButtonStyleHelper.outlineBlackTL131,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    imagePath: productcardgrid4ItemModelObj?.favoriteIcon,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 14.v),
        Text(
          productcardgrid4ItemModelObj.title!,
          style: CustomTextStyles.labelLargeGray5006,
        ),
        SizedBox(height: 6.v),
        Row(
          children: [
            Text(
              productcardgrid4ItemModelObj.price!,
              style: CustomTextStyles.titleMediumGray5006,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 3.v,
              ),
              child: Text(
                productcardgrid4ItemModelObj.discountedPrice!,
                style: CustomTextStyles.bodySmallProductSansLightGray200Light_1
                    .copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 3.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 18.v),
              child: CustomRatingBar(
                ignoreGestures: true,
                initialRating: 5,
              ),
            ),
            Container(
              width: 14.h,
              margin: EdgeInsets.only(left: 3.h),
              child: Text(
                productcardgrid4ItemModelObj.ratingCount!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallProductSansLightGray5006,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
