import 'bloc/notification_setting_bloc.dart';
import 'models/notification_setting_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_switch.dart';

class NotificationSettingScreen extends StatelessWidget {
  const NotificationSettingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationSettingBloc>(
      create: (context) => NotificationSettingBloc(NotificationSettingState(
        notificationSettingModelObj: NotificationSettingModel(),
      ))
        ..add(NotificationSettingInitialEvent()),
      child: NotificationSettingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
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
                      style: CustomTextStyles.bodyMediumGray5006,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "msg_receive_push_notifications".tr,
                      style:
                          CustomTextStyles.bodySmallProductSansLightGray500610,
                    ),
                  ],
                ),
              ),
              BlocSelector<NotificationSettingBloc, NotificationSettingState,
                  bool?>(
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
                          .read<NotificationSettingBloc>()
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
                    style: CustomTextStyles.bodyMediumGray5006,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_play_sound_for_new".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray500610,
                  ),
                ],
              ),
              BlocSelector<NotificationSettingBloc, NotificationSettingState,
                  bool?>(
                selector: (state) => state.isSelectedSwitch1,
                builder: (context, isSelectedSwitch1) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(top: 6.v),
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      context
                          .read<NotificationSettingBloc>()
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
                    style: CustomTextStyles.bodyMediumGray5006,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_allow_notification".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray500610,
                  ),
                ],
              ),
              BlocSelector<NotificationSettingBloc, NotificationSettingState,
                  bool?>(
                selector: (state) => state.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(top: 6.v),
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<NotificationSettingBloc>()
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
