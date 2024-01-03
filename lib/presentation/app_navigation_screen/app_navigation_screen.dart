import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.welcomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.introOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "log in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forgot password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "verification code".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage full".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageFullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "discover".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.discoverScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "found results".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.foundResultsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product full".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.productFullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.productScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "your cart".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.yourCartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.checkOutOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.checkOutTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "my orders-Three - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myOrdersThreeTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "order info-One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderInfoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "rate product".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.rateProductScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "order info-Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderInfoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "track order".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.trackOrderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "discover full".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.discoverFullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "filter".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filterScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.productOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "rate product-One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rateProductOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "collection-One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.collectionOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "collection-Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.collectionTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "my wishlist-boards - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myWishlistBoardsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile setting".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSettingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "add new card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addNewCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "new card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "voucher".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.voucherScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "address".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat support".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatSupportScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "setting Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification setting One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.welcomeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro One One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.introOneOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro Two One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.introTwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro Three One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.introThreeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "log in Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forgot password One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "verification code Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationCodeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordTwo1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password Two One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordTwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.welcomeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.introFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.introSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "intro Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.introFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "log in One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forgot password Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "verification code One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationCodeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "create new password Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage full Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageFullTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage full One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageFullOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "discover Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.discoverTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search Two One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchTwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "found results One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.foundResultsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product full One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productFullOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.productTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "your cart One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.yourCartOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-One One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutOneOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-Two One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutTwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-Three One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutThreeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "order info-One One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderInfoOneOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "rate product One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rateProductOne1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "order info-Two One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderInfoTwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "track order One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.trackOrderOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage full Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageFullThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "homepage Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "discover One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.discoverOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "search Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchTwo1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "found results Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.foundResultsTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product full Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productFullTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "your cart Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.yourCartTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-One Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutOneTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-Two Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutTwoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "check out-Three Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.checkOutThreeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "order info-One Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderInfoOneTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "rate product Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rateProductTwo1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "order info-Two Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderInfoTwoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "track order Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.trackOrderTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 11 Pro / X - TwentyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone11ProXTwentyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "discover Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.discoverThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "filter One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filterOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "product Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "rate product-One Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rateProductOneThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "rate product-One One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rateProductOneOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "collection-One One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.collectionOneOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "collection-Two One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.collectionTwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile setting Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSettingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "add new card One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addNewCardOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "new card Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newCardTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "voucher Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.voucherTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "address Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addressTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat support Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chatSupportTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "setting Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.settingThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification setting Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "collection-One Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.collectionOneTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "collection-Two Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.collectionTwoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile setting One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSettingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "add new card Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addNewCardTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "new card One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newCardOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "voucher One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.voucherOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "address One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addressOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat support One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chatSupportOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "setting".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification setting".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
