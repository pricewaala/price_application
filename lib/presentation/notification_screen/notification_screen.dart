import '../notification_screen/widgets/scrollview_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'models/scrollview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (context) => NotificationBloc(NotificationState(
        notificationModelObj: NotificationModel(),
      ))
        ..add(NotificationInitialEvent()),
      child: NotificationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5007,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: _buildScrollView(context),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_notification".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child:
          BlocSelector<NotificationBloc, NotificationState, NotificationModel?>(
        selector: (state) => state.notificationModelObj,
        builder: (context, notificationModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 30.v,
              );
            },
            itemCount: notificationModelObj?.scrollviewItemList.length ?? 0,
            itemBuilder: (context, index) {
              ScrollviewItemModel model =
                  notificationModelObj?.scrollviewItemList[index] ??
                      ScrollviewItemModel();
              return ScrollviewItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
