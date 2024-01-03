import '../product_full_screen/widgets/productcardsection_item_widget.dart';
import '../product_full_screen/widgets/view_item_widget.dart';
import 'bloc/product_full_bloc.dart';
import 'models/product_full_model.dart';
import 'models/productcardsection_item_model.dart';
import 'models/view_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductFullScreen extends StatelessWidget {
  const ProductFullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductFullBloc>(
      create: (context) => ProductFullBloc(ProductFullState(
        productFullModelObj: ProductFullModel(),
      ))
        ..add(ProductFullInitialEvent()),
      child: ProductFullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1783.v,
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
                        color: appTheme.gray5005,
                      ),
                    ),
                  ),
                  _buildProductView(context),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 603.v,
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
                        horizontal: 29.h,
                        vertical: 51.v,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder21,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildSportwearSet(context),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Row(
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
                                      style: CustomTextStyles
                                          .bodySmallProductSansLight_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 17.v),
                          Divider(),
                          SizedBox(height: 14.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 88.h,
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
                          _buildColorAndSizeSection(context),
                          SizedBox(height: 33.v),
                          Divider(),
                          SizedBox(height: 15.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: _buildReviewsSection(
                              context,
                              reviewsText: "lbl_description".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(),
                          SizedBox(height: 21.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 288.h,
                              margin: EdgeInsets.only(left: 4.h),
                              child: ReadMoreText(
                                "msg_sportswear_is_no".tr,
                                trimLines: 4,
                                colorClickableText: appTheme.blueGray500,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: "lbl_read_more".tr,
                                moreStyle: CustomTextStyles
                                    .bodySmallProductSansLight_1
                                    .copyWith(
                                  height: 1.67,
                                ),
                                lessStyle: CustomTextStyles
                                    .bodySmallProductSansLight_1
                                    .copyWith(
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 37.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: _buildReviewsSection(
                              context,
                              reviewsText: "lbl_reviews".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(),
                          SizedBox(height: 23.v),
                          _buildRatingSection(context),
                          SizedBox(height: 17.v),
                          _buildFiveSection(context),
                          SizedBox(height: 11.v),
                          _buildFourSection(context),
                          SizedBox(height: 12.v),
                          _buildThreeSection(context),
                          SizedBox(height: 13.v),
                          _buildTwoSection(context),
                          SizedBox(height: 13.v),
                          _buildOneSection(context),
                          SizedBox(height: 23.v),
                          _buildFrameSection(context),
                          SizedBox(height: 40.v),
                          _buildJenniferRoseSection(context),
                          SizedBox(height: 33.v),
                          _buildKellyRihanaSection(context),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: _buildReviewsSection(
                              context,
                              reviewsText: "lbl_similar_product".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(),
                          SizedBox(height: 8.v),
                        ],
                      ),
                    ),
                  ),
                  _buildProductCardSection(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildComponentTwoSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductView(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 509.v,
        width: 355.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage87,
              height: 509.v,
              width: 355.h,
              alignment: Alignment.center,
            ),
            Align(
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
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 335.v,
                        width: 313.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            BlocBuilder<ProductFullBloc, ProductFullState>(
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
                                  itemCount: state.productFullModelObj
                                          ?.viewItemList.length ??
                                      0,
                                  itemBuilder: (context, index, realIndex) {
                                    ViewItemModel model = state
                                            .productFullModelObj
                                            ?.viewItemList[index] ??
                                        ViewItemModel();
                                    return ViewItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: BlocBuilder<ProductFullBloc,
                                  ProductFullState>(
                                builder: (context, state) {
                                  return SizedBox(
                                    height: 10.v,
                                    child: AnimatedSmoothIndicator(
                                      activeIndex: state.sliderIndex,
                                      count: state.productFullModelObj
                                              ?.viewItemList.length ??
                                          0,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                        dotColor: appTheme.gray80008,
                                        activeDotScale: 2.0,
                                        dotHeight: 5.v,
                                        dotWidth: 5.h,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
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
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSportwearSet(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_sportwear_set".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer18,
            ),
          ),
          Text(
            "lbl_80_00".tr,
            style: theme.textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColorAndSizeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
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
                  borderRadius: BorderRadiusStyle.roundedBorder15,
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
                  borderRadius: BorderRadiusStyle.roundedBorder15,
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
                  borderRadius: BorderRadiusStyle.roundedBorder15,
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
  Widget _buildRatingSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "lbl_4_9".tr,
            style: theme.textTheme.displayMedium,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 16.v,
              bottom: 13.v,
            ),
            child: Text(
              "lbl_out_of_5".tr,
              style: CustomTextStyles.bodySmallPoppinsBluegray40004,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                CustomRatingBar(
                  initialRating: 0,
                  itemSize: 18,
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_83_ratings".tr,
                    style: CustomTextStyles
                        .bodySmallProductSansLightBluegray4000410,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiveSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "lbl_5".tr,
            style: CustomTextStyles.bodySmallProductSansLightBluegray40004_1,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 12.v,
          width: 13.h,
          margin: EdgeInsets.only(
            left: 5.h,
            bottom: 1.v,
          ),
        ),
        Container(
          height: 4.v,
          width: 234.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 234.h,
                  child: Divider(
                    color: appTheme.blueGray5001,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 198.h,
                  child: Divider(
                    color: appTheme.blueGray500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(
            "lbl_80".tr,
            style: CustomTextStyles.bodySmallProductSansLightBlack900_2,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFourSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "lbl_4".tr,
              style: CustomTextStyles.bodySmallProductSansLightBluegray40004_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSignal,
            height: 12.v,
            width: 13.h,
            margin: EdgeInsets.only(
              left: 5.h,
              bottom: 1.v,
            ),
          ),
          Container(
            height: 4.v,
            width: 234.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 234.h,
                    child: Divider(
                      color: appTheme.blueGray5001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 4.v,
                    width: 46.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray500,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Text(
              "lbl_12".tr,
              style: CustomTextStyles.bodySmallProductSansLightBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThreeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_3".tr,
            style: CustomTextStyles.bodySmallProductSansLightBluegray40004_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSignal,
            height: 12.v,
            width: 13.h,
            margin: EdgeInsets.only(left: 5.h),
          ),
          Container(
            height: 4.v,
            width: 234.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 234.h,
                    child: Divider(
                      color: appTheme.blueGray5001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 4.v,
                    width: 21.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray500,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Text(
              "lbl_52".tr,
              style: CustomTextStyles.bodySmallProductSansLightBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_2".tr,
            style: CustomTextStyles.bodySmallProductSansLightBluegray40004_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSignal,
            height: 12.v,
            width: 13.h,
            margin: EdgeInsets.only(left: 5.h),
          ),
          Container(
            height: 4.v,
            width: 234.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 234.h,
                    child: Divider(
                      color: appTheme.blueGray5001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 4.v,
                    width: 14.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray500,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Text(
              "lbl_32".tr,
              style: CustomTextStyles.bodySmallProductSansLightBlack900_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOneSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_1".tr,
          style: CustomTextStyles.bodySmallProductSansLightBluegray40004_1,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 12.v,
          width: 13.h,
          margin: EdgeInsets.only(left: 8.h),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
            child: Divider(
              color: appTheme.blueGray5001,
              indent: 11.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 21.h),
          child: Text(
            "lbl_0".tr,
            style: CustomTextStyles.bodySmallProductSansLightBlack900_2,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_47_reviews".tr,
              style: CustomTextStyles.bodySmallProductSansLightBluegray40004,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_write_a_review".tr,
              style: CustomTextStyles.bodySmallProductSansLightBluegray40004,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJenniferRoseSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 1.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse76,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_jennifer_rose".tr,
                        style:
                            CustomTextStyles.labelLargeProductSansBluegray90004,
                      ),
                      SizedBox(height: 9.v),
                      CustomRatingBar(
                        initialRating: 5,
                        itemSize: 9,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_5m_ago".tr,
                    style: CustomTextStyles.labelMediumNunitoBluegray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          SizedBox(
            width: 311.h,
            child: Text(
              "msg_i_love_it_awesome".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodySmallProductSansLightBlack90011.copyWith(
                height: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKellyRihanaSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse77,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_kelly_rihana".tr,
                        style:
                            CustomTextStyles.labelLargeProductSansBluegray90004,
                      ),
                      SizedBox(height: 8.v),
                      CustomRatingBar(
                        initialRating: 5,
                        itemSize: 9,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_9m_ago".tr,
                    style: CustomTextStyles.labelMediumNunitoBluegray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            width: 303.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 6.h,
            ),
            child: Text(
              "msg_i_m_very_happy_with".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodySmallProductSansLightBlack90011.copyWith(
                height: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: 1782.v,
        child:
            BlocSelector<ProductFullBloc, ProductFullState, ProductFullModel?>(
          selector: (state) => state.productFullModelObj,
          builder: (context, productFullModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(
                left: 31.h,
                top: 1442.v,
                bottom: 116.v,
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 20.h,
                );
              },
              itemCount:
                  productFullModelObj?.productcardsectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                ProductcardsectionItemModel model =
                    productFullModelObj?.productcardsectionItemList[index] ??
                        ProductcardsectionItemModel();
                return ProductcardsectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwoSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 117.h,
        right: 117.h,
        bottom: 4.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
          Padding(
            padding: EdgeInsets.only(top: 13.v),
            child: SizedBox(
              width: 87.h,
              child: Divider(
                color: appTheme.whiteA700,
              ),
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
    );
  }

  /// Common widget
  Widget _buildReviewsSection(
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
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
