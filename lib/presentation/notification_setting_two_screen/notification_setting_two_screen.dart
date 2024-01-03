import 'bloc/notification_setting_two_bloc.dart';
import 'models/notification_setting_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_switch.dart';

class NotificationSettingTwoScreen extends StatelessWidget {
  const NotificationSettingTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationSettingTwoBloc>(
      create: (context) =>
          NotificationSettingTwoBloc(NotificationSettingTwoState(
        notificationSettingTwoModelObj: NotificationSettingTwoModel(),
      ))
            ..add(NotificationSettingTwoInitialEvent()),
      child: NotificationSettingTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 33.v),
            child: _buildNotificationSetting(context),
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
  Widget _buildNotificationSetting(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_show_notifications".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "msg_receive_push_notifications".tr,
                      style:
                          CustomTextStyles.bodySmallProductSansLightBlack90010,
                    ),
                  ],
                ),
              ),
              BlocSelector<NotificationSettingTwoBloc,
                  NotificationSettingTwoState, bool?>(
                selector: (state) => state.isSelectedSwitch,
                builder: (context, isSelectedSwitch) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(
                      left: 36.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<NotificationSettingTwoBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_notification_sounds".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_play_sound_for_new".tr,
                    style: CustomTextStyles.bodySmallProductSansLightBlack90010,
                  ),
                ],
              ),
              BlocSelector<NotificationSettingTwoBloc,
                  NotificationSettingTwoState, bool?>(
                selector: (state) => state.isSelectedSwitch1,
                builder: (context, isSelectedSwitch1) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(top: 6.v),
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      context
                          .read<NotificationSettingTwoBloc>()
                          .add(ChangeSwitch1Event(value: value));
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_lock_screen_notifications".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_allow_notification".tr,
                    style: CustomTextStyles.bodySmallProductSansLightBlack90010,
                  ),
                ],
              ),
              BlocSelector<NotificationSettingTwoBloc,
                  NotificationSettingTwoState, bool?>(
                selector: (state) => state.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(top: 6.v),
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<NotificationSettingTwoBloc>()
                          .add(ChangeSwitch2Event(value: value));
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
