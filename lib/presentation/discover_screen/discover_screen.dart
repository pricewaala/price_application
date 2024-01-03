import '../discover_screen/widgets/discover_item_widget.dart';
import 'bloc/discover_bloc.dart';
import 'models/discover_item_model.dart';
import 'models/discover_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_search_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverBloc>(
      create: (context) => DiscoverBloc(DiscoverState(
        discoverModelObj: DiscoverModel(),
      ))
        ..add(DiscoverInitialEvent()),
      child: DiscoverScreen(),
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
              SizedBox(height: 28.v),
              _buildDiscover(context),
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
            child: BlocSelector<DiscoverBloc, DiscoverState,
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
  Widget _buildDiscover(BuildContext context) {
    return BlocSelector<DiscoverBloc, DiscoverState, DiscoverModel?>(
      selector: (state) => state.discoverModelObj,
      builder: (context, discoverModelObj) {
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
          itemCount: discoverModelObj?.discoverItemList.length ?? 0,
          itemBuilder: (context, index) {
            DiscoverItemModel model =
                discoverModelObj?.discoverItemList[index] ??
                    DiscoverItemModel();
            return DiscoverItemWidget(
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
