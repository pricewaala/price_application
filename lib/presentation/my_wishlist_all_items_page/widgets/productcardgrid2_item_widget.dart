import '../models/productcardgrid2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productcardgrid2ItemWidget extends StatelessWidget {
  Productcardgrid2ItemWidget(
    this.productcardgrid2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardgrid2ItemModel productcardgrid2ItemModelObj;

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
                imagePath: productcardgrid2ItemModelObj?.productImage,
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
                    imagePath: ImageConstant.imgFavorite,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          productcardgrid2ItemModelObj.title!,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 6.v),
        Text(
          productcardgrid2ItemModelObj.price!,
          style: CustomTextStyles.titleMediumOnPrimaryContainer,
        ),
        SizedBox(height: 4.v),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: CustomRatingBar(
                ignoreGestures: true,
                initialRating: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                productcardgrid2ItemModelObj.ratingCount!,
                style: CustomTextStyles.bodySmallProductSansLight10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
