import '../search_one_screen/widgets/productcard11_item_widget.dart';
import '../search_one_screen/widgets/recentsearch2_item_widget.dart';
import 'bloc/search_one_bloc.dart';
import 'models/productcard11_item_model.dart';
import 'models/recentsearch2_item_model.dart';
import 'models/search_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class SearchOneScreen extends StatelessWidget {
  const SearchOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchOneBloc>(
      create: (context) => SearchOneBloc(SearchOneState(
        searchOneModelObj: SearchOneModel(),
      ))
        ..add(SearchOneInitialEvent()),
      child: SearchOneScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildSearchBar(context),
              SizedBox(height: 27.v),
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
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.fromLTRB(30.h, 10.v, 309.h, 10.v),
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
                child: BlocSelector<SearchOneBloc, SearchOneState,
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
          BlocSelector<SearchOneBloc, SearchOneState, SearchOneModel?>(
            selector: (state) => state.searchOneModelObj,
            builder: (context, searchOneModelObj) {
              return Wrap(
                runSpacing: 15.v,
                spacing: 15.h,
                children: List<Widget>.generate(
                  searchOneModelObj?.recentsearch2ItemList.length ?? 0,
                  (index) {
                    Recentsearch2ItemModel model =
                        searchOneModelObj?.recentsearch2ItemList[index] ??
                            Recentsearch2ItemModel();

                    return Recentsearch2ItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<SearchOneBloc>().add(UpdateChipViewEvent(
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
                  style: CustomTextStyles.titleLargeProductSansBlack900,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 75.h,
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
          ),
          SizedBox(height: 15.v),
          SizedBox(
            height: 224.v,
            child: BlocSelector<SearchOneBloc, SearchOneState, SearchOneModel?>(
              selector: (state) => state.searchOneModelObj,
              builder: (context, searchOneModelObj) {
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
                      searchOneModelObj?.productcard11ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard11ItemModel model =
                        searchOneModelObj?.productcard11ItemList[index] ??
                            Productcard11ItemModel();
                    return Productcard11ItemWidget(
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
