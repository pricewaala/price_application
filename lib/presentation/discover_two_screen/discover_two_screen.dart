import '../discover_two_screen/widgets/userprofile9_item_widget.dart';
import 'bloc/discover_two_bloc.dart';
import 'models/discover_two_model.dart';
import 'models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class DiscoverTwoScreen extends StatelessWidget {
  const DiscoverTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverTwoBloc>(
      create: (context) => DiscoverTwoBloc(DiscoverTwoState(
        discoverTwoModelObj: DiscoverTwoModel(),
      ))
        ..add(DiscoverTwoInitialEvent()),
      child: DiscoverTwoScreen(),
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
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 31.h,
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
            child: BlocSelector<DiscoverTwoBloc, DiscoverTwoState,
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
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<DiscoverTwoBloc, DiscoverTwoState, DiscoverTwoModel?>(
      selector: (state) => state.discoverTwoModelObj,
      builder: (context, discoverTwoModelObj) {
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
          itemCount: discoverTwoModelObj?.userprofile9ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile9ItemModel model =
                discoverTwoModelObj?.userprofile9ItemList[index] ??
                    Userprofile9ItemModel();
            return Userprofile9ItemWidget(
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
}
