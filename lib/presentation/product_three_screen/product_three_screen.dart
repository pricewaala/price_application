import '../product_three_screen/widgets/view5_item_widget.dart';
import 'bloc/product_three_bloc.dart';
import 'models/product_three_model.dart';
import 'models/view5_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';

class ProductThreeScreen extends StatelessWidget {
  const ProductThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductThreeBloc>(
      create: (context) => ProductThreeBloc(ProductThreeState(
        productThreeModelObj: ProductThreeModel(),
      ))
        ..add(ProductThreeInitialEvent()),
      child: ProductThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 777.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 416.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.gray5002,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 532.v,
                      width: 355.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage87,
                            height: 532.v,
                            width: 355.h,
                            alignment: Alignment.center,
                          ),
                          _buildProductDetails(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        bottom: 96.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_color".tr,
                              style:
                                  CustomTextStyles.titleMediumMulishGray80007,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_4_available".tr,
                              style: CustomTextStyles
                                  .titleSmallMulishBluegray20001,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgColor,
                            height: 44.v,
                            width: 176.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 26.h,
                        vertical: 51.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildFrame(context),
                          SizedBox(height: 17.v),
                          Divider(
                            indent: 5.h,
                            endIndent: 4.h,
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                right: 92.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_color".tr,
                                    style: CustomTextStyles
                                        .bodyMediumBluegray40001,
                                  ),
                                  Text(
                                    "lbl_size".tr,
                                    style: CustomTextStyles
                                        .bodyMediumBluegray40001,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildProductSize(context),
                          SizedBox(height: 15.v),
                          Divider(
                            indent: 5.h,
                            endIndent: 4.h,
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              right: 4.h,
                            ),
                            child: _buildProductReviews(
                              context,
                              reviewsText: "lbl_description".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(
                            indent: 6.h,
                            endIndent: 4.h,
                          ),
                          SizedBox(height: 14.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              right: 4.h,
                            ),
                            child: _buildProductReviews(
                              context,
                              reviewsText: "lbl_reviews".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(
                            indent: 6.h,
                            endIndent: 4.h,
                          ),
                          SizedBox(height: 14.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              right: 4.h,
                            ),
                            child: _buildProductReviews(
                              context,
                              reviewsText: "lbl_similar_product".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(
                            indent: 6.h,
                            endIndent: 4.h,
                          ),
                          SizedBox(height: 8.v),
                        ],
                      ),
                    ),
                  ),
                  _buildAddToCart(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 335.v,
        width: 313.h,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 24.v,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            BlocBuilder<ProductThreeBloc, ProductThreeState>(
              builder: (context, state) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 335.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      state.sliderIndex = index;
                    },
                  ),
                  itemCount:
                      state.productThreeModelObj?.view5ItemList.length ?? 0,
                  itemBuilder: (context, index, realIndex) {
                    View5ItemModel model =
                        state.productThreeModelObj?.view5ItemList[index] ??
                            View5ItemModel();
                    return View5ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            CustomAppBar(
              height: 36.v,
              leadingWidth: 66.h,
              leading: AppbarLeadingIconbutton(
                imagePath: ImageConstant.imgArrowLeftWhiteA700,
                margin: EdgeInsets.only(left: 30.h),
              ),
              actions: [
                AppbarTrailingIconbutton(
                  imagePath: ImageConstant.imgFavoriteWhiteA700,
                  margin: EdgeInsets.symmetric(
                    horizontal: 32.h,
                    vertical: 2.v,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_sportwear_set".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer18,
                  ),
                  SizedBox(height: 16.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: CustomRatingBar(
                          initialRating: 5,
                          itemSize: 15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          top: 4.v,
                        ),
                        child: Text(
                          "lbl_83".tr,
                          style: CustomTextStyles.bodySmallProductSansLight_1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "lbl_80_00".tr,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductSize(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgColorWhiteA700,
            height: 34.v,
            width: 102.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 33.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray5007.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Text(
                  "lbl_s".tr,
                  style: CustomTextStyles.labelLargeGray40005,
                ),
              ),
              Container(
                width: 33.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray5007.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Text(
                  "lbl_m".tr,
                  style: CustomTextStyles.labelLargeGray40005,
                ),
              ),
              Container(
                width: 33.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray80006.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Text(
                  "lbl_l".tr,
                  style: CustomTextStyles.labelLargeWhiteA700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 117.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 20.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBag,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "lbl_add_to_cart".tr,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 13.v),
            SizedBox(
              width: 87.h,
              child: Divider(
                color: appTheme.whiteA700,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                color: appTheme.whiteA700,
                indent: 19.h,
                endIndent: 9.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildProductReviews(
    BuildContext context, {
    required String reviewsText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            reviewsText,
            style: CustomTextStyles.titleMediumBluegray90004.copyWith(
              color: appTheme.blueGray90004,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
