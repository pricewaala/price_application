import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_outlined_button.dart';

class IntroOneScreen extends StatefulWidget {
  const IntroOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return IntroOneScreen();
  }

  @override
  _IntroOneScreenState createState() => _IntroOneScreenState();
}

class _IntroOneScreenState extends State<IntroOneScreen> {
  int activeIndex = 0;
  late Timer timer;
  final CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
    // Initialize activeIndex with the initial page index (0)
    activeIndex = 0;

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        activeIndex = (activeIndex + 1) % 3;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenHeight = constraints.maxHeight;
        double screenWidth = constraints.maxWidth;

        return Scaffold(
          body: Column(
            children: [
              SizedBox(height: screenHeight * 0.1),
              Text("msg_discover_something".tr,
                  style: CustomTextStyles.titleLargeProductSansBlack900Bold),
              SizedBox(height: screenHeight * 0.02),
              Text("msg_special_new_arrivals".tr,
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: screenHeight * 0.03),
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildShoppingNowSection(screenHeight, screenWidth),
                    _buildFrameSection(screenHeight),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildShoppingNowSection(double screenHeight, double screenWidth) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.1, vertical: screenHeight * 0.1),
        decoration: AppDecoration.fillGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.4,
            ),
            SizedBox(height: screenHeight * 0.025),
            SizedBox(
              height: screenHeight * 0.006,
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: screenWidth * 0.04,
                  activeDotColor: appTheme.whiteA700,
                  dotHeight: screenHeight * 0.009,
                  dotWidth: screenWidth * 0.015,
                ),
                onDotClicked: (index) {
                  _carouselController.animateToPage(index);
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            SizedBox(
              child: CustomOutlinedButton(
                onPressed: () {
                  print("Shopping Now tapped");
                  // Navigate to the SignUpOneScreen
                  NavigatorService.pushNamed(AppRoutes.signUpScreen);
                },
                text: "lbl_shopping_now".tr,
                margin: EdgeInsets.only(
                    left: screenWidth * 0.015, right: screenWidth * 0.01),
                buttonStyle: CustomButtonStyles.outlineWhiteA,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }

  Widget _buildFrameSection(double screenHeight) {
    return Align(
      alignment: Alignment.topCenter,
      child: CarouselSlider(
        carouselController: _carouselController, // Pass the controller
        options: CarouselOptions(
          height: screenHeight * 0.520,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          onPageChanged: (index, reason) {
            setState(() {
              activeIndex = index; // Update activeIndex on page change
            });
          },
        ),
        items: [
          // Carousel items...
          CustomImageView(
            imagePath: ImageConstant.imgWelcome2,
            height: screenHeight * 0.500,
            width: screenHeight * 0.287,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgWelcome3,
            height: screenHeight * 0.500,
            width: screenHeight * 0.287,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgWelcome,
            height: screenHeight * 0.500,
            width: screenHeight * 0.287,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
