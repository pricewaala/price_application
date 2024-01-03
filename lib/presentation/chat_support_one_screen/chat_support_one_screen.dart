import 'bloc/chat_support_one_bloc.dart';
import 'models/chat_support_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class ChatSupportOneScreen extends StatelessWidget {
  const ChatSupportOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatSupportOneBloc>(
      create: (context) => ChatSupportOneBloc(ChatSupportOneState(
        chatSupportOneModelObj: ChatSupportOneModel(),
      ))
        ..add(ChatSupportOneInitialEvent()),
      child: ChatSupportOneScreen(),
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
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: Column(
            children: [
              SizedBox(height: 53.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildChatSupportOne(context),
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
      height: 69.v,
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
                  imagePath: ImageConstant.imgArrowLeftGray90005,
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(
                    left: 28.h,
                    top: 2.v,
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
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    children: [
                      AppbarSubtitleFive(
                        text: "lbl_admin".tr,
                      ),
                      SizedBox(height: 6.v),
                      AppbarSubtitleEight(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 13.h),
                      ),
                    ],
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgFrame33358WhiteA700,
                  margin: EdgeInsets.only(
                    left: 147.h,
                    top: 13.v,
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
              color: appTheme.gray80001,
            ),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildChatSupportOne(BuildContext context) {
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
                  ImageConstant.imgGroup134,
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
                  style: CustomTextStyles.bodyMediumWhiteA700,
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
                    ImageConstant.imgGroup135,
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
                    style: CustomTextStyles.bodyMediumWhiteA700,
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
      decoration: AppDecoration.fillGray90007,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: BlocSelector<ChatSupportOneBloc, ChatSupportOneState,
                TextEditingController?>(
              selector: (state) => state.messageController,
              builder: (context, messageController) {
                return CustomTextFormField(
                  controller: messageController,
                  hintText: "msg_type_your_messages".tr,
                  hintStyle:
                      CustomTextStyles.bodySmallProductSansLightGray200_1,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL102,
                  filled: true,
                  fillColor: appTheme.gray90005,
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
              decoration: IconButtonStyleHelper.fillGrayTL22,
              child: CustomImageView(
                imagePath: ImageConstant.imgSave,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
