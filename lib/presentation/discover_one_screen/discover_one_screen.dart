import '../discover_one_screen/widgets/userprofile13_item_widget.dart';
import 'bloc/discover_one_bloc.dart';
import 'models/discover_one_model.dart';
import 'models/userprofile13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class DiscoverOneScreen extends StatelessWidget {
  const DiscoverOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverOneBloc>(
      create: (context) => DiscoverOneBloc(DiscoverOneState(
        discoverOneModelObj: DiscoverOneModel(),
      ))
        ..add(DiscoverOneInitialEvent()),
      child: DiscoverOneScreen(),
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
          padding: EdgeInsets.symmetric(horizontal: 31.h),
          child: Column(
            children: [
              SizedBox(height: 6.v),
              _buildSearchBar(context),
              SizedBox(height: 34.v),
              _buildUserProfile(context),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: BlocSelector<DiscoverOneBloc, DiscoverOneState,
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
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<DiscoverOneBloc, DiscoverOneState, DiscoverOneModel?>(
      selector: (state) => state.discoverOneModelObj,
      builder: (context, discoverOneModelObj) {
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
          itemCount: discoverOneModelObj?.userprofile13ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile13ItemModel model =
                discoverOneModelObj?.userprofile13ItemList[index] ??
                    Userprofile13ItemModel();
            return Userprofile13ItemWidget(
              model,
            );
          },
        );
      },
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
