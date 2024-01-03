import '../search_three_screen/widgets/productcard16_item_widget.dart';
import '../search_three_screen/widgets/recentsearch4_item_widget.dart';
import 'bloc/search_three_bloc.dart';
import 'models/productcard16_item_model.dart';
import 'models/recentsearch4_item_model.dart';
import 'models/search_three_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class SearchThreeScreen extends StatelessWidget {
  const SearchThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchThreeBloc>(
      create: (context) => SearchThreeBloc(SearchThreeState(
        searchThreeModelObj: SearchThreeModel(),
      ))
        ..add(SearchThreeInitialEvent()),
      child: SearchThreeScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildSearchBar(context),
              SizedBox(height: 36.v),
              _buildRecentSearches(context),
              SizedBox(height: 81.v),
              _buildPopularThisWeek(context),
              SizedBox(height: 5.v),
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
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: BlocSelector<SearchThreeBloc, SearchThreeState,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearches(BuildContext context) {
    return Container(
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
          BlocSelector<SearchThreeBloc, SearchThreeState, SearchThreeModel?>(
            selector: (state) => state.searchThreeModelObj,
            builder: (context, searchThreeModelObj) {
              return Wrap(
                runSpacing: 15.v,
                spacing: 15.h,
                children: List<Widget>.generate(
                  searchThreeModelObj?.recentsearch4ItemList.length ?? 0,
                  (index) {
                    Recentsearch4ItemModel model =
                        searchThreeModelObj?.recentsearch4ItemList[index] ??
                            Recentsearch4ItemModel();

                    return Recentsearch4ItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<SearchThreeBloc>().add(UpdateChipViewEvent(
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
    );
  }

  /// Section Widget
  Widget _buildPopularThisWeek(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 32.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_popular_this_week".tr,
                  style: CustomTextStyles.titleLargeProductSansGray5006Bold,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 75.h,
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
          ),
          SizedBox(height: 15.v),
          SizedBox(
            height: 224.v,
            child: BlocSelector<SearchThreeBloc, SearchThreeState,
                SearchThreeModel?>(
              selector: (state) => state.searchThreeModelObj,
              builder: (context, searchThreeModelObj) {
                return ListView.separated(
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
                      searchThreeModelObj?.productcard16ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard16ItemModel model =
                        searchThreeModelObj?.productcard16ItemList[index] ??
                            Productcard16ItemModel();
                    return Productcard16ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
