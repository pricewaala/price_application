import '../discover_three_screen/widgets/productlist4_item_widget.dart';
import 'bloc/discover_three_bloc.dart';
import 'models/discover_three_model.dart';
import 'models/productlist4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class DiscoverThreeScreen extends StatelessWidget {
  const DiscoverThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverThreeBloc>(
      create: (context) => DiscoverThreeBloc(DiscoverThreeState(
        discoverThreeModelObj: DiscoverThreeModel(),
      ))
        ..add(DiscoverThreeInitialEvent()),
      child: DiscoverThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              _buildSearchBar(context),
              SizedBox(height: 34.v),
              _buildFrame(context),
              SizedBox(height: 22.v),
              _buildProductList(context),
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
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgTelevisionGray5006,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_discover".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPinGray5006,
          margin: EdgeInsets.fromLTRB(30.h, 15.v, 30.h, 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: BlocSelector<DiscoverThreeBloc, DiscoverThreeState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    hintStyle: CustomTextStyles.titleSmallBluegray200,
                    borderDecoration: SearchViewStyleHelper.outlineBlackTL20,
                    fillColor: appTheme.gray90007,
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
              decoration: IconButtonStyleHelper.outlineBlackTL15,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionBlueGray20049x51,
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
  Widget _buildProductList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocSelector<DiscoverThreeBloc, DiscoverThreeState,
            DiscoverThreeModel?>(
          selector: (state) => state.discoverThreeModelObj,
          builder: (context, discoverThreeModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.5.v),
                  child: SizedBox(
                    width: 303.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray90007,
                    ),
                  ),
                );
              },
              itemCount:
                  discoverThreeModelObj?.productlist4ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productlist4ItemModel model =
                    discoverThreeModelObj?.productlist4ItemList[index] ??
                        Productlist4ItemModel();
                return Productlist4ItemWidget(
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
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray90005,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.15),
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
        imagePath: ImageConstant.imgFrame33104WhiteA700,
        height: 23.v,
        width: 269.h,
        margin: EdgeInsets.fromLTRB(53.h, 24.v, 51.h, 32.v),
      ),
    );
  }
}
