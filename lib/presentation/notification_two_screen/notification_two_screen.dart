import 'bloc/notification_two_bloc.dart';
import 'models/notification_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class NotificationTwoScreen extends StatelessWidget {
  const NotificationTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationTwoBloc>(
      create: (context) => NotificationTwoBloc(NotificationTwoState(
        notificationTwoModelObj: NotificationTwoModel(),
      ))
        ..add(NotificationTwoInitialEvent()),
      child: NotificationTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationTwoBloc, NotificationTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90007,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 21.v),
                child: _buildNotificationTwo(context),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_notification".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          _buildFrameTwo(
            context,
            messageText1: "msg_good_morning_get".tr,
            messageText2: "msg_summer_sale_up_to".tr,
          ),
          SizedBox(height: 30.v),
          _buildFrameTwo(
            context,
            messageText1: "msg_special_offer_just".tr,
            messageText2: "msg_new_autumn_collection".tr,
          ),
          SizedBox(height: 25.v),
          _buildFrameTwo(
            context,
            messageText1: "msg_holiday_sale_50".tr,
            messageText2: "msg_tap_here_to_get".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwo(
    BuildContext context, {
    required String messageText1,
    required String messageText2,
  }) {
    return Container(
      width: 315.h,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray900071.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            messageText1,
            style: CustomTextStyles.bodyMediumGray5006.copyWith(
              color: appTheme.gray5006,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            messageText2,
            style: CustomTextStyles.bodyMediumRobotoGray200.copyWith(
              color: appTheme.gray200,
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
