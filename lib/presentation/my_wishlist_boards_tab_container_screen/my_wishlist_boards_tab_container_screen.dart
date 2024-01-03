import 'bloc/my_wishlist_boards_tab_container_bloc.dart';
import 'models/my_wishlist_boards_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/presentation/my_wishlist_all_items_two_page/my_wishlist_all_items_two_page.dart';
import 'package:price_s_application2/presentation/my_wishlist_boards_two_page/my_wishlist_boards_two_page.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class MyWishlistBoardsTabContainerScreen extends StatefulWidget {
  const MyWishlistBoardsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MyWishlistBoardsTabContainerScreenState createState() =>
      MyWishlistBoardsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyWishlistBoardsTabContainerBloc>(
      create: (context) =>
          MyWishlistBoardsTabContainerBloc(MyWishlistBoardsTabContainerState(
        myWishlistBoardsTabContainerModelObj:
            MyWishlistBoardsTabContainerModel(),
      ))
            ..add(MyWishlistBoardsTabContainerInitialEvent()),
      child: MyWishlistBoardsTabContainerScreen(),
    );
  }
}

class MyWishlistBoardsTabContainerScreenState
    extends State<MyWishlistBoardsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyWishlistBoardsTabContainerBloc,
        MyWishlistBoardsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 6.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 36.v,
                            width: 296.h,
                            child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: appTheme.whiteA700,
                              labelStyle: TextStyle(
                                fontSize: 16.fSize,
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelColor: appTheme.black900,
                              unselectedLabelStyle: TextStyle(
                                fontSize: 16.fSize,
                                fontFamily: 'Product Sans',
                                fontWeight: FontWeight.w700,
                              ),
                              indicator: BoxDecoration(
                                color: appTheme.black900,
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "lbl_all_items".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_boards".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 590.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                MyWishlistAllItemsTwoPage(),
                                MyWishlistBoardsTwoPage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
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
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "lbl_my_wishlist".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPin,
          margin: EdgeInsets.fromLTRB(31.h, 14.v, 31.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        height: 81.v,
        width: 374.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 80.v,
                width: 374.h,
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
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 51.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 8.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame33104Gray20023x269,
                      height: 23.v,
                      width: 269.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
