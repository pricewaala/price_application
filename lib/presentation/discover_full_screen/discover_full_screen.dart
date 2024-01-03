import '../discover_full_screen/widgets/accessoriescomponent_item_widget.dart';
import 'bloc/discover_full_bloc.dart';
import 'models/accessoriescomponent_item_model.dart';
import 'models/discover_full_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class DiscoverFullScreen extends StatelessWidget {
  const DiscoverFullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverFullBloc>(
      create: (context) => DiscoverFullBloc(DiscoverFullState(
        discoverFullModelObj: DiscoverFullModel(),
      ))
        ..add(DiscoverFullInitialEvent()),
      child: DiscoverFullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      right: 17.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildSearchBar(context),
                        SizedBox(height: 34.v),
                        _buildFrame1(context),
                        SizedBox(height: 22.v),
                        _buildFiftyOne(
                          context,
                          skirtLabel: "lbl_jacket".tr,
                          itemCounterLabel: "lbl_128_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        _buildFiftyOne(
                          context,
                          skirtLabel: "lbl_skirts".tr,
                          itemCounterLabel: "lbl_40_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        _buildFiftyOne(
                          context,
                          skirtLabel: "lbl_dresses".tr,
                          itemCounterLabel: "lbl_36_items".tr,
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
                          child: _buildFrame(
                            context,
                            text: "lbl_sweaters".tr,
                            text1: "lbl_24_items".tr,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 41.h,
                            right: 3.h,
                          ),
                          child: _buildFrame(
                            context,
                            text: "lbl_jeans".tr,
                            text1: "lbl_14_items".tr,
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
                        _buildFiftyOne(
                          context,
                          skirtLabel: "lbl_t_shirts".tr,
                          itemCounterLabel: "lbl_12_items".tr,
                        ),
                        Divider(
                          color: appTheme.gray10004,
                          indent: 18.h,
                          endIndent: 18.h,
                        ),
                        _buildFiftyOne(
                          context,
                          skirtLabel: "lbl_pants".tr,
                          itemCounterLabel: "lbl_9_items".tr,
                        ),
                        SizedBox(height: 9.v),
                        _buildAccessoriesComponent(context),
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
              child: BlocSelector<DiscoverFullBloc, DiscoverFullState,
                  TextEditingController?>(
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
  Widget _buildFrame1(BuildContext context) {
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
  Widget _buildAccessoriesComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child:
          BlocSelector<DiscoverFullBloc, DiscoverFullState, DiscoverFullModel?>(
        selector: (state) => state.discoverFullModelObj,
        builder: (context, discoverFullModelObj) {
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
                discoverFullModelObj?.accessoriescomponentItemList.length ?? 0,
            itemBuilder: (context, index) {
              AccessoriescomponentItemModel model =
                  discoverFullModelObj?.accessoriescomponentItemList[index] ??
                      AccessoriescomponentItemModel();
              return AccessoriescomponentItemWidget(
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
  Widget _buildFiftyOne(
    BuildContext context, {
    required String skirtLabel,
    required String itemCounterLabel,
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
            skirtLabel,
            style: CustomTextStyles.bodyMediumProductSansLight.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            itemCounterLabel,
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
  Widget _buildFrame(
    BuildContext context, {
    required String text,
    required String text1,
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
            text,
            style:
                CustomTextStyles.bodySmallProductSansLightBlack900_2.copyWith(
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
