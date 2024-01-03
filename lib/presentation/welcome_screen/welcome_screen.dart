import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/welcome_bloc.dart';
import 'models/welcome_model.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
        create: (context) => WelcomeBloc(WelcomeState(welcomeModelObj: WelcomeModel()))
          ..add(WelcomeInitialEvent()),
        child: WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery for responsive layout
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black900.withOpacity(0.5),
            body: Container(
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(
                color: appTheme.black900.withOpacity(0.5),
                image: DecorationImage(
                  image: AssetImage(ImageConstant.imgWelcome),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1, // Responsive padding
                  vertical: screenHeight * 0.1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text("msg_welcome_to_gemstore".tr,
                        style: CustomTextStyles.headlineSmallWhiteA700),
                    SizedBox(height: screenHeight * 0.02), // Responsive space
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05),
                      child: Text("msg_the_home_for_a_fashionista".tr,
                          style: theme.textTheme.titleMedium),
                    ),
                    SizedBox(height: screenHeight * 0.07), // Responsive space
                    CustomOutlinedButton(
                      width: screenWidth * 0.5, // Responsive button width
                      text: "lbl_get_started".tr,
                      buttonStyle: CustomButtonStyles.outlineWhiteA,
                      alignment: Alignment.center,
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
