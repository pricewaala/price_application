import 'bloc/chat_support_two_bloc.dart';
import 'models/chat_support_two_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class ChatSupportTwoScreen extends StatelessWidget {
  const ChatSupportTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatSupportTwoBloc>(
      create: (context) => ChatSupportTwoBloc(ChatSupportTwoState(
        chatSupportTwoModelObj: ChatSupportTwoModel(),
      ))
        ..add(ChatSupportTwoInitialEvent()),
      child: ChatSupportTwoScreen(),
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
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            children: [
              SizedBox(height: 53.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildChatSupportTwo(context),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessage(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 71.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              right: 31.h,
            ),
            child: Row(
              children: [
                AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgArrowLeftWhiteA700,
                  margin: EdgeInsets.only(bottom: 7.v),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(
                    left: 28.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  color: appTheme.gray40005,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: Container(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    decoration: AppDecoration.fillGray40005.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsUserFilled,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(5.h, 5.v, 4.h, 4.v),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 8.v,
                            width: 9.h,
                            margin: EdgeInsets.only(
                              left: 26.h,
                              top: 27.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray50002,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                              border: Border.all(
                                color: appTheme.whiteA700,
                                width: 1.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 2.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitleSeven(
                        text: "lbl_admin".tr,
                      ),
                      SizedBox(height: 6.v),
                      AppbarSubtitleNine(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 13.h),
                      ),
                    ],
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgFrame33358,
                  margin: EdgeInsets.only(
                    left: 147.h,
                    top: 15.v,
                    bottom: 10.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.black900.withOpacity(0.25),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildChatSupportTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        bottom: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 245.h,
            margin: EdgeInsets.only(right: 114.h),
            padding: EdgeInsets.symmetric(
              horizontal: 43.h,
              vertical: 16.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup15,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.v),
                Text(
                  "msg_hello_can_i_help".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_today_7_02pm".tr,
              style: CustomTextStyles.bodySmallProductSansLightBluegray200_1,
            ),
          ),
          SizedBox(height: 80.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 316.h,
              margin: EdgeInsets.only(left: 43.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup16,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.v),
                  Text(
                    "msg_hi_i_have_a_question".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 30.h),
              child: Text(
                "lbl_today_7_02pm".tr,
                style: CustomTextStyles.bodySmallProductSansLightBlack900_1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.h,
        right: 11.h,
        bottom: 39.v,
      ),
      decoration: AppDecoration.fillGray5006,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: BlocSelector<ChatSupportTwoBloc, ChatSupportTwoState,
                TextEditingController?>(
              selector: (state) => state.messageController,
              builder: (context, messageController) {
                return CustomTextFormField(
                  controller: messageController,
                  hintText: "msg_type_your_messages".tr,
                  hintStyle:
                      CustomTextStyles.bodySmallProductSansLightBluegray200_1,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
                  filled: true,
                  fillColor: appTheme.gray10001,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionWhiteA70045x45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
