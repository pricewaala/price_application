import '../iphone_11_pro_x_twentyone_screen/widgets/productlist3_item_widget.dart';
import 'bloc/iphone_11_pro_x_twentyone_bloc.dart';
import 'models/iphone_11_pro_x_twentyone_model.dart';
import 'models/productlist3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class Iphone11ProXTwentyoneScreen extends StatelessWidget {
  const Iphone11ProXTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProXTwentyoneBloc>(
      create: (context) => Iphone11ProXTwentyoneBloc(Iphone11ProXTwentyoneState(
        iphone11ProXTwentyoneModelObj: Iphone11ProXTwentyoneModel(),
      ))
        ..add(Iphone11ProXTwentyoneInitialEvent()),
      child: Iphone11ProXTwentyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: Column(
                      children: [
                        _buildSearchBar(context),
                        SizedBox(height: 34.v),
                        _buildFrame(context),
                        SizedBox(height: 22.v),
                        _buildSkirts(
                          context,
                          text: "lbl_jacket".tr,
                          text1: "lbl_128_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        _buildSkirts(
                          context,
                          text: "lbl_skirts".tr,
                          text1: "lbl_40_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        _buildSkirts(
                          context,
                          text: "lbl_dresses".tr,
                          text1: "lbl_36_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 41.h,
                            right: 4.h,
                          ),
                          child: _buildJeans(
                            context,
                            productName: "lbl_sweaters".tr,
                            itemCount: "lbl_24_items".tr,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Divider(
                            color: appTheme.gray10004,
                            indent: 56.h,
                            endIndent: 19.h,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 41.h,
                            right: 3.h,
                          ),
                          child: _buildJeans(
                            context,
                            productName: "lbl_jeans".tr,
                            itemCount: "lbl_14_items".tr,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Divider(
                            color: appTheme.gray10004,
                            indent: 57.h,
                            endIndent: 18.h,
                          ),
                        ),
                        _buildSkirts(
                          context,
                          text: "lbl_t_shirts".tr,
                          text1: "lbl_12_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        _buildSkirts(
                          context,
                          text: "lbl_pants".tr,
                          text1: "lbl_9_items".tr,
                        ),
                        SizedBox(height: 9.v),
                        _buildAccessoriesFrame(context),
                        SizedBox(height: 19.v),
                        _buildProductList(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_discover".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPin,
          margin: EdgeInsets.fromLTRB(29.h, 15.v, 29.h, 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: BlocSelector<Iphone11ProXTwentyoneBloc,
                  Iphone11ProXTwentyoneState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    hintStyle: theme.textTheme.titleSmall!,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: CustomIconButton(
              height: 49.v,
              width: 51.h,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgSend,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 126.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillGray50003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 46.v,
                      bottom: 40.v,
                    ),
                    child: Text(
                      "lbl_clothing".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.fillGray40001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder50,
                    ),
                    child: Container(
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray40001,
                        borderRadius: BorderRadius.circular(
                          37.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup126x123,
            height: 126.v,
            width: 123.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccessoriesFrame(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 28.h,
                top: 49.v,
              ),
              child: Text(
                "lbl_accessories2".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              decoration: AppDecoration.fillGray600.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 46.v,
                      bottom: 46.v,
                    ),
                    child: Text(
                      "lbl_accessories2".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    height: 108.v,
                    width: 151.h,
                    margin: EdgeInsets.only(top: 3.v),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 5.h),
                            padding: EdgeInsets.all(10.h),
                            decoration: AppDecoration.fillGray50006.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder50,
                            ),
                            child: Container(
                              height: 85.adaptSize,
                              width: 85.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.gray50006,
                                borderRadius: BorderRadius.circular(
                                  42.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup106x151,
                          height: 106.v,
                          width: 151.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 16.h,
      ),
      child: BlocSelector<Iphone11ProXTwentyoneBloc, Iphone11ProXTwentyoneState,
          Iphone11ProXTwentyoneModel?>(
        selector: (state) => state.iphone11ProXTwentyoneModelObj,
        builder: (context, iphone11ProXTwentyoneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 19.v,
              );
            },
            itemCount:
                iphone11ProXTwentyoneModelObj?.productlist3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist3ItemModel model =
                  iphone11ProXTwentyoneModelObj?.productlist3ItemList[index] ??
                      Productlist3ItemModel();
              return Productlist3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame33104Black900,
        height: 23.v,
        width: 269.h,
        margin: EdgeInsets.fromLTRB(53.h, 24.v, 51.h, 32.v),
      ),
    );
  }

  /// Common widget
  Widget _buildSkirts(
    BuildContext context, {
    required String text,
    required String text1,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: CustomTextStyles.bodyMediumProductSansLight.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            text1,
            style: CustomTextStyles.bodySmallProductSansLightGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
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
    );
  }

  /// Common widget
  Widget _buildJeans(
    BuildContext context, {
    required String productName,
    required String itemCount,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            productName,
            style:
                CustomTextStyles.bodySmallProductSansLightBlack900_2.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            itemCount,
            style: CustomTextStyles.bodySmallProductSansLightGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
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
    );
  }
}
