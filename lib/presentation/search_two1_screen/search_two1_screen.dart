import '../search_two1_screen/widgets/productcard17_item_widget.dart';
import '../search_two1_screen/widgets/recentsearch6_item_widget.dart';
import 'bloc/search_two1_bloc.dart';
import 'models/productcard17_item_model.dart';
import 'models/recentsearch6_item_model.dart';
import 'models/search_two1_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class SearchTwo1Screen extends StatelessWidget {
  const SearchTwo1Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTwo1Bloc>(
      create: (context) => SearchTwo1Bloc(SearchTwo1State(
        searchTwo1ModelObj: SearchTwo1Model(),
      ))
        ..add(SearchTwo1InitialEvent()),
      child: SearchTwo1Screen(),
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
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              _buildSearchBar(context),
              SizedBox(height: 36.v),
              _buildRecentSearches(context),
              SizedBox(height: 81.v),
              _buildFrame(context),
              SizedBox(height: 15.v),
              _buildProductCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.fromLTRB(32.h, 10.v, 307.h, 10.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: BlocSelector<SearchTwo1Bloc, SearchTwo1State,
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
  Widget _buildRecentSearches(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: 32.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 26.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "lbl_recent_searches".tr,
                      style: CustomTextStyles.bodyMediumGray200,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpGray200,
                    height: 21.adaptSize,
                    width: 21.adaptSize,
                    margin: EdgeInsets.only(left: 174.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            BlocSelector<SearchTwo1Bloc, SearchTwo1State, SearchTwo1Model?>(
              selector: (state) => state.searchTwo1ModelObj,
              builder: (context, searchTwo1ModelObj) {
                return Wrap(
                  runSpacing: 15.v,
                  spacing: 15.h,
                  children: List<Widget>.generate(
                    searchTwo1ModelObj?.recentsearch6ItemList.length ?? 0,
                    (index) {
                      Recentsearch6ItemModel model =
                          searchTwo1ModelObj?.recentsearch6ItemList[index] ??
                              Recentsearch6ItemModel();

                      return Recentsearch6ItemWidget(
                        model,
                        onSelectedChipView: (value) {
                          context.read<SearchTwo1Bloc>().add(
                              UpdateChipViewEvent(
                                  index: index, isSelected: value));
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 32.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_popular_this_week".tr,
            style: CustomTextStyles.titleLargeProductSansGray5006Bold,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_show_all".tr,
              style: CustomTextStyles.bodyMediumGray20013,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 224.v,
        child: BlocSelector<SearchTwo1Bloc, SearchTwo1State, SearchTwo1Model?>(
          selector: (state) => state.searchTwo1ModelObj,
          builder: (context, searchTwo1ModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 32.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 20.h,
                );
              },
              itemCount: searchTwo1ModelObj?.productcard17ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcard17ItemModel model =
                    searchTwo1ModelObj?.productcard17ItemList[index] ??
                        Productcard17ItemModel();
                return Productcard17ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
