import 'bloc/my_orders_three_tab_container_bloc.dart';
import 'models/my_orders_three_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/presentation/my_orders_one_two_page/my_orders_one_two_page.dart';
import 'package:price_s_application2/presentation/my_orders_three_two_page/my_orders_three_two_page.dart';
import 'package:price_s_application2/presentation/my_orders_two_two_page/my_orders_two_two_page.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class MyOrdersThreeTabContainerScreen extends StatefulWidget {
  const MyOrdersThreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersThreeTabContainerScreenState createState() =>
      MyOrdersThreeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyOrdersThreeTabContainerBloc>(
      create: (context) =>
          MyOrdersThreeTabContainerBloc(MyOrdersThreeTabContainerState(
        myOrdersThreeTabContainerModelObj: MyOrdersThreeTabContainerModel(),
      ))
            ..add(MyOrdersThreeTabContainerInitialEvent()),
      child: MyOrdersThreeTabContainerScreen(),
    );
  }
}

class MyOrdersThreeTabContainerScreenState
    extends State<MyOrdersThreeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrdersThreeTabContainerBloc,
        MyOrdersThreeTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 17.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildTabview(context),
                          SizedBox(
                            height: 588.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                MyOrdersOneTwoPage(),
                                MyOrdersTwoTwoPage(),
                                MyOrdersThreeTwoPage(),
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
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "lbl_my_orders".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPin,
          margin: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 28.v,
      width: 309.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Product Sans Medium',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Product Sans Medium',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray800,
          borderRadius: BorderRadius.circular(
            14.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_pending2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_delivered2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_cancelled".tr,
            ),
          ),
        ],
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
    );
  }
}
