import 'bloc/welcome_one_bloc.dart';
import 'models/welcome_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

class WelcomeOneScreen extends StatelessWidget {
  const WelcomeOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeOneBloc>(
      create: (context) => WelcomeOneBloc(WelcomeOneState(
        welcomeOneModelObj: WelcomeOneModel(),
      ))
        ..add(WelcomeOneInitialEvent()),
      child: WelcomeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeOneBloc, WelcomeOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black900.withOpacity(0.5),
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.5),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgWelcome,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 47.h,
                  vertical: 100.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      "msg_welcome_to_fluxstore".tr,
                      style: CustomTextStyles.headlineSmallWhiteA700,
                    ),
                    SizedBox(height: 18.v),
                    Text(
                      "msg_the_home_for_a_fashionista".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 63.v),
                    CustomOutlinedButton(
                      width: 193.h,
                      text: "lbl_get_started".tr,
                      buttonStyle: CustomButtonStyles.outlineWhiteA,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
