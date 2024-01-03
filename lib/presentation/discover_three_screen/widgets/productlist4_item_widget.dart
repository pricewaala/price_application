import '../models/productlist4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Productlist4ItemWidget extends StatelessWidget {
  Productlist4ItemWidget(
    this.productlist4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist4ItemModel productlist4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillGray90005,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productlist4ItemModelObj.jacketText!,
                style: CustomTextStyles.bodyMediumProductSansLightGray5006,
              ),
              Spacer(),
              Text(
                productlist4ItemModelObj.itemCount1Text!,
                style: CustomTextStyles.bodySmallProductSansLightGray200_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray5006,
                height: 9.v,
                width: 5.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillGray90005,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productlist4ItemModelObj.skirtsText!,
                style: CustomTextStyles.bodyMediumProductSansLightGray5006,
              ),
              Spacer(),
              Text(
                productlist4ItemModelObj.itemCount2Text!,
                style: CustomTextStyles.bodySmallProductSansLightGray200_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray5006,
                height: 9.v,
                width: 5.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 1.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillGray90005,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productlist4ItemModelObj.dressesText!,
                style: CustomTextStyles.bodyMediumProductSansLightGray5006,
              ),
              Spacer(),
              Text(
                productlist4ItemModelObj.itemCount3Text!,
                style: CustomTextStyles.bodySmallProductSansLightGray200_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray5006,
                height: 9.v,
                width: 5.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(
              left: 41.h,
              right: 4.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillGray90005,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  productlist4ItemModelObj.sweatersText!,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                ),
                Spacer(),
                Text(
                  productlist4ItemModelObj.itemCount4Text!,
                  style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGray5006,
                  height: 9.v,
                  width: 4.h,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 1.v),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(
              left: 41.h,
              right: 3.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillGray90005,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  productlist4ItemModelObj.jeansText!,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                ),
                Spacer(),
                Text(
                  productlist4ItemModelObj.itemCount5Text!,
                  style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGray5006,
                  height: 9.v,
                  width: 4.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillGray90005,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productlist4ItemModelObj.tshirtsText!,
                style: CustomTextStyles.bodyMediumProductSansLightGray5006,
              ),
              Spacer(),
              Text(
                productlist4ItemModelObj.itemCount6Text!,
                style: CustomTextStyles.bodySmallProductSansLightGray200_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray5006,
                height: 9.v,
                width: 5.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillGray90005,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productlist4ItemModelObj.pantsText!,
                style: CustomTextStyles.bodyMediumProductSansLightGray5006,
              ),
              Spacer(),
              Text(
                productlist4ItemModelObj.itemCount7Text!,
                style: CustomTextStyles.bodySmallProductSansLightGray200_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorGray5006,
                height: 9.v,
                width: 5.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
