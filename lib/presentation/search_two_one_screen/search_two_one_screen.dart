import '../search_two_one_screen/widgets/close2_item_widget.dart';
import '../search_two_one_screen/widgets/productcard12_item_widget.dart';
import 'bloc/search_two_one_bloc.dart';
import 'models/close2_item_model.dart';
import 'models/productcard12_item_model.dart';
import 'models/search_two_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class SearchTwoOneScreen extends StatelessWidget {
  const SearchTwoOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTwoOneBloc>(
      create: (context) => SearchTwoOneBloc(SearchTwoOneState(
        searchTwoOneModelObj: SearchTwoOneModel(),
      ))
        ..add(SearchTwoOneInitialEvent()),
      child: SearchTwoOneScreen(),
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
              _buildSearchBar(context),
              SizedBox(height: 27.v),
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
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.fromLTRB(30.h, 10.v, 309.h, 10.v),
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
              child: BlocSelector<SearchTwoOneBloc, SearchTwoOneState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_dresses".tr,
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
                  Text(
                    "lbl_recent_searches".tr,
                    style: CustomTextStyles.titleMediumNunitoBluegray90004,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlueGray90004,
                    height: 21.adaptSize,
                    width: 21.adaptSize,
                    margin: EdgeInsets.only(left: 172.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            BlocSelector<SearchTwoOneBloc, SearchTwoOneState,
                SearchTwoOneModel?>(
              selector: (state) => state.searchTwoOneModelObj,
              builder: (context, searchTwoOneModelObj) {
                return Wrap(
                  runSpacing: 15.v,
                  spacing: 15.h,
                  children: List<Widget>.generate(
                    searchTwoOneModelObj?.close2ItemList.length ?? 0,
                    (index) {
                      Close2ItemModel model =
                          searchTwoOneModelObj?.close2ItemList[index] ??
                              Close2ItemModel();

                      return Close2ItemWidget(
                        model,
                        onSelectedChipView: (value) {
                          context.read<SearchTwoOneBloc>().add(
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
            style: CustomTextStyles.titleLargeProductSansBlack900,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_show_all".tr,
              style: CustomTextStyles.bodyMediumGray50004,
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
        child: BlocSelector<SearchTwoOneBloc, SearchTwoOneState,
            SearchTwoOneModel?>(
          selector: (state) => state.searchTwoOneModelObj,
          builder: (context, searchTwoOneModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 35.h),
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
                  searchTwoOneModelObj?.productcard12ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcard12ItemModel model =
                    searchTwoOneModelObj?.productcard12ItemList[index] ??
                        Productcard12ItemModel();
                return Productcard12ItemWidget(
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
