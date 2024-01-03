import 'package:flutter/material.dart';
import 'package:price_s_application2/presentation/welcome_screen/welcome_screen.dart';
import 'package:price_s_application2/presentation/intro_one_screen/intro_one_screen.dart';
import 'package:price_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:price_s_application2/presentation/log_in_screen/log_in_screen.dart';
import 'package:price_s_application2/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:price_s_application2/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_two_screen/create_new_password_two_screen.dart';
import 'package:price_s_application2/presentation/homepage_screen/homepage_screen.dart';
import 'package:price_s_application2/presentation/homepage_full_screen/homepage_full_screen.dart';
import 'package:price_s_application2/presentation/discover_screen/discover_screen.dart';
import 'package:price_s_application2/presentation/search_screen/search_screen.dart';
import 'package:price_s_application2/presentation/search_two_screen/search_two_screen.dart';
import 'package:price_s_application2/presentation/found_results_screen/found_results_screen.dart';
import 'package:price_s_application2/presentation/product_full_screen/product_full_screen.dart';
import 'package:price_s_application2/presentation/product_screen/product_screen.dart';
import 'package:price_s_application2/presentation/your_cart_screen/your_cart_screen.dart';
import 'package:price_s_application2/presentation/check_out_one_screen/check_out_one_screen.dart';
import 'package:price_s_application2/presentation/check_out_two_screen/check_out_two_screen.dart';
import 'package:price_s_application2/presentation/check_out_three_screen/check_out_three_screen.dart';
import 'package:price_s_application2/presentation/my_orders_three_tab_container_screen/my_orders_three_tab_container_screen.dart';
import 'package:price_s_application2/presentation/order_info_one_screen/order_info_one_screen.dart';
import 'package:price_s_application2/presentation/rate_product_screen/rate_product_screen.dart';
import 'package:price_s_application2/presentation/order_info_two_screen/order_info_two_screen.dart';
import 'package:price_s_application2/presentation/track_order_screen/track_order_screen.dart';
import 'package:price_s_application2/presentation/discover_full_screen/discover_full_screen.dart';
import 'package:price_s_application2/presentation/filter_screen/filter_screen.dart';
import 'package:price_s_application2/presentation/product_one_screen/product_one_screen.dart';
import 'package:price_s_application2/presentation/rate_product_one_screen/rate_product_one_screen.dart';
import 'package:price_s_application2/presentation/notification_screen/notification_screen.dart';
import 'package:price_s_application2/presentation/collection_one_screen/collection_one_screen.dart';
import 'package:price_s_application2/presentation/collection_two_screen/collection_two_screen.dart';
import 'package:price_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:price_s_application2/presentation/my_wishlist_boards_tab_container_screen/my_wishlist_boards_tab_container_screen.dart';
import 'package:price_s_application2/presentation/profile_setting_screen/profile_setting_screen.dart';
import 'package:price_s_application2/presentation/payment_screen/payment_screen.dart';
import 'package:price_s_application2/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:price_s_application2/presentation/new_card_screen/new_card_screen.dart';
import 'package:price_s_application2/presentation/voucher_screen/voucher_screen.dart';
import 'package:price_s_application2/presentation/address_screen/address_screen.dart';
import 'package:price_s_application2/presentation/chat_support_screen/chat_support_screen.dart';
import 'package:price_s_application2/presentation/setting_two_screen/setting_two_screen.dart';
import 'package:price_s_application2/presentation/notification_setting_one_screen/notification_setting_one_screen.dart';
import 'package:price_s_application2/presentation/welcome_two_screen/welcome_two_screen.dart';
import 'package:price_s_application2/presentation/intro_one_one_screen/intro_one_one_screen.dart';
import 'package:price_s_application2/presentation/intro_two_one_screen/intro_two_one_screen.dart';
import 'package:price_s_application2/presentation/intro_three_one_screen/intro_three_one_screen.dart';
import 'package:price_s_application2/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:price_s_application2/presentation/log_in_two_screen/log_in_two_screen.dart';
import 'package:price_s_application2/presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import 'package:price_s_application2/presentation/verification_code_two_screen/verification_code_two_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_two1_screen/create_new_password_two1_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_two_one_screen/create_new_password_two_one_screen.dart';
import 'package:price_s_application2/presentation/welcome_one_screen/welcome_one_screen.dart';
import 'package:price_s_application2/presentation/intro_four_screen/intro_four_screen.dart';
import 'package:price_s_application2/presentation/intro_six_screen/intro_six_screen.dart';
import 'package:price_s_application2/presentation/intro_five_screen/intro_five_screen.dart';
import 'package:price_s_application2/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:price_s_application2/presentation/log_in_one_screen/log_in_one_screen.dart';
import 'package:price_s_application2/presentation/forgot_password_two_screen/forgot_password_two_screen.dart';
import 'package:price_s_application2/presentation/verification_code_one_screen/verification_code_one_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_one_screen/create_new_password_one_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_three_screen/create_new_password_three_screen.dart';
import 'package:price_s_application2/presentation/create_new_password_four_screen/create_new_password_four_screen.dart';
import 'package:price_s_application2/presentation/homepage_full_two_screen/homepage_full_two_screen.dart';
import 'package:price_s_application2/presentation/homepage_one_screen/homepage_one_screen.dart';
import 'package:price_s_application2/presentation/homepage_full_one_screen/homepage_full_one_screen.dart';
import 'package:price_s_application2/presentation/discover_two_screen/discover_two_screen.dart';
import 'package:price_s_application2/presentation/search_one_screen/search_one_screen.dart';
import 'package:price_s_application2/presentation/search_two_one_screen/search_two_one_screen.dart';
import 'package:price_s_application2/presentation/found_results_one_screen/found_results_one_screen.dart';
import 'package:price_s_application2/presentation/product_full_one_screen/product_full_one_screen.dart';
import 'package:price_s_application2/presentation/product_two_screen/product_two_screen.dart';
import 'package:price_s_application2/presentation/your_cart_one_screen/your_cart_one_screen.dart';
import 'package:price_s_application2/presentation/check_out_one_one_screen/check_out_one_one_screen.dart';
import 'package:price_s_application2/presentation/check_out_two_one_screen/check_out_two_one_screen.dart';
import 'package:price_s_application2/presentation/check_out_three_one_screen/check_out_three_one_screen.dart';
import 'package:price_s_application2/presentation/order_info_one_one_screen/order_info_one_one_screen.dart';
import 'package:price_s_application2/presentation/rate_product_one1_screen/rate_product_one1_screen.dart';
import 'package:price_s_application2/presentation/order_info_two_one_screen/order_info_two_one_screen.dart';
import 'package:price_s_application2/presentation/track_order_one_screen/track_order_one_screen.dart';
import 'package:price_s_application2/presentation/homepage_full_three_screen/homepage_full_three_screen.dart';
import 'package:price_s_application2/presentation/homepage_two_screen/homepage_two_screen.dart';
import 'package:price_s_application2/presentation/discover_one_screen/discover_one_screen.dart';
import 'package:price_s_application2/presentation/search_three_screen/search_three_screen.dart';
import 'package:price_s_application2/presentation/search_two1_screen/search_two1_screen.dart';
import 'package:price_s_application2/presentation/found_results_two_screen/found_results_two_screen.dart';
import 'package:price_s_application2/presentation/product_full_two_screen/product_full_two_screen.dart';
import 'package:price_s_application2/presentation/your_cart_two_screen/your_cart_two_screen.dart';
import 'package:price_s_application2/presentation/check_out_one_two_screen/check_out_one_two_screen.dart';
import 'package:price_s_application2/presentation/check_out_two_two_screen/check_out_two_two_screen.dart';
import 'package:price_s_application2/presentation/check_out_three_two_screen/check_out_three_two_screen.dart';
import 'package:price_s_application2/presentation/order_info_one_two_screen/order_info_one_two_screen.dart';
import 'package:price_s_application2/presentation/rate_product_two1_screen/rate_product_two1_screen.dart';
import 'package:price_s_application2/presentation/order_info_two_two_screen/order_info_two_two_screen.dart';
import 'package:price_s_application2/presentation/track_order_two_screen/track_order_two_screen.dart';
import 'package:price_s_application2/presentation/iphone_11_pro_x_twentyone_screen/iphone_11_pro_x_twentyone_screen.dart';
import 'package:price_s_application2/presentation/discover_three_screen/discover_three_screen.dart';
import 'package:price_s_application2/presentation/filter_one_screen/filter_one_screen.dart';
import 'package:price_s_application2/presentation/product_three_screen/product_three_screen.dart';
import 'package:price_s_application2/presentation/rate_product_one_three_screen/rate_product_one_three_screen.dart';
import 'package:price_s_application2/presentation/rate_product_one_one_screen/rate_product_one_one_screen.dart';
import 'package:price_s_application2/presentation/notification_one_screen/notification_one_screen.dart';
import 'package:price_s_application2/presentation/collection_one_one_screen/collection_one_one_screen.dart';
import 'package:price_s_application2/presentation/collection_two_one_screen/collection_two_one_screen.dart';
import 'package:price_s_application2/presentation/profile_two_screen/profile_two_screen.dart';
import 'package:price_s_application2/presentation/profile_setting_two_screen/profile_setting_two_screen.dart';
import 'package:price_s_application2/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:price_s_application2/presentation/add_new_card_one_screen/add_new_card_one_screen.dart';
import 'package:price_s_application2/presentation/new_card_two_screen/new_card_two_screen.dart';
import 'package:price_s_application2/presentation/voucher_two_screen/voucher_two_screen.dart';
import 'package:price_s_application2/presentation/address_two_screen/address_two_screen.dart';
import 'package:price_s_application2/presentation/chat_support_two_screen/chat_support_two_screen.dart';
import 'package:price_s_application2/presentation/setting_three_screen/setting_three_screen.dart';
import 'package:price_s_application2/presentation/notification_setting_two_screen/notification_setting_two_screen.dart';
import 'package:price_s_application2/presentation/notification_two_screen/notification_two_screen.dart';
import 'package:price_s_application2/presentation/collection_one_two_screen/collection_one_two_screen.dart';
import 'package:price_s_application2/presentation/collection_two_two_screen/collection_two_two_screen.dart';
import 'package:price_s_application2/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:price_s_application2/presentation/profile_setting_one_screen/profile_setting_one_screen.dart';
import 'package:price_s_application2/presentation/payment_two_screen/payment_two_screen.dart';
import 'package:price_s_application2/presentation/add_new_card_two_screen/add_new_card_two_screen.dart';
import 'package:price_s_application2/presentation/new_card_one_screen/new_card_one_screen.dart';
import 'package:price_s_application2/presentation/voucher_one_screen/voucher_one_screen.dart';
import 'package:price_s_application2/presentation/address_one_screen/address_one_screen.dart';
import 'package:price_s_application2/presentation/chat_support_one_screen/chat_support_one_screen.dart';
import 'package:price_s_application2/presentation/setting_screen/setting_screen.dart';
import 'package:price_s_application2/presentation/notification_setting_screen/notification_setting_screen.dart';
import 'package:price_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String introOneScreen = '/intro_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String createNewPasswordTwoScreen =
      '/create_new_password_two_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String homepageFullScreen = '/homepage_full_screen';

  static const String discoverScreen = '/discover_screen';

  static const String searchScreen = '/search_screen';

  static const String searchTwoScreen = '/search_two_screen';

  static const String foundResultsScreen = '/found_results_screen';

  static const String productFullScreen = '/product_full_screen';

  static const String productScreen = '/product_screen';

  static const String yourCartScreen = '/your_cart_screen';

  static const String checkOutOneScreen = '/check_out_one_screen';

  static const String checkOutTwoScreen = '/check_out_two_screen';

  static const String checkOutThreeScreen = '/check_out_three_screen';

  static const String myOrdersOnePage = '/my_orders_one_page';

  static const String myOrdersTwoPage = '/my_orders_two_page';

  static const String myOrdersThreePage = '/my_orders_three_page';

  static const String myOrdersThreeTabContainerScreen =
      '/my_orders_three_tab_container_screen';

  static const String orderInfoOneScreen = '/order_info_one_screen';

  static const String rateProductScreen = '/rate_product_screen';

  static const String orderInfoTwoScreen = '/order_info_two_screen';

  static const String trackOrderScreen = '/track_order_screen';

  static const String discoverFullScreen = '/discover_full_screen';

  static const String filterScreen = '/filter_screen';

  static const String productOneScreen = '/product_one_screen';

  static const String rateProductOneScreen = '/rate_product_one_screen';

  static const String notificationScreen = '/notification_screen';

  static const String collectionOneScreen = '/collection_one_screen';

  static const String collectionTwoScreen = '/collection_two_screen';

  static const String profileScreen = '/profile_screen';

  static const String myWishlistAllItemsPage = '/my_wishlist_all_items_page';

  static const String myWishlistBoardsPage = '/my_wishlist_boards_page';

  static const String myWishlistBoardsTabContainerScreen =
      '/my_wishlist_boards_tab_container_screen';

  static const String profileSettingScreen = '/profile_setting_screen';

  static const String paymentScreen = '/payment_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String newCardScreen = '/new_card_screen';

  static const String voucherScreen = '/voucher_screen';

  static const String addressScreen = '/address_screen';

  static const String chatSupportScreen = '/chat_support_screen';

  static const String settingTwoScreen = '/setting_two_screen';

  static const String notificationSettingOneScreen =
      '/notification_setting_one_screen';

  static const String welcomeTwoScreen = '/welcome_two_screen';

  static const String introOneOneScreen = '/intro_one_one_screen';

  static const String introTwoOneScreen = '/intro_two_one_screen';

  static const String introThreeOneScreen = '/intro_three_one_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String logInTwoScreen = '/log_in_two_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String verificationCodeTwoScreen =
      '/verification_code_two_screen';

  static const String createNewPasswordTwo1Screen =
      '/create_new_password_two1_screen';

  static const String createNewPasswordTwoOneScreen =
      '/create_new_password_two_one_screen';

  static const String welcomeOneScreen = '/welcome_one_screen';

  static const String introFourScreen = '/intro_four_screen';

  static const String introSixScreen = '/intro_six_screen';

  static const String introFiveScreen = '/intro_five_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String logInOneScreen = '/log_in_one_screen';

  static const String forgotPasswordTwoScreen = '/forgot_password_two_screen';

  static const String verificationCodeOneScreen =
      '/verification_code_one_screen';

  static const String createNewPasswordOneScreen =
      '/create_new_password_one_screen';

  static const String createNewPasswordThreeScreen =
      '/create_new_password_three_screen';

  static const String createNewPasswordFourScreen =
      '/create_new_password_four_screen';

  static const String homepageFullTwoScreen = '/homepage_full_two_screen';

  static const String homepageOneScreen = '/homepage_one_screen';

  static const String homepageFullOneScreen = '/homepage_full_one_screen';

  static const String discoverTwoScreen = '/discover_two_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String searchTwoOneScreen = '/search_two_one_screen';

  static const String foundResultsOneScreen = '/found_results_one_screen';

  static const String productFullOneScreen = '/product_full_one_screen';

  static const String productTwoScreen = '/product_two_screen';

  static const String yourCartOneScreen = '/your_cart_one_screen';

  static const String checkOutOneOneScreen = '/check_out_one_one_screen';

  static const String checkOutTwoOneScreen = '/check_out_two_one_screen';

  static const String checkOutThreeOneScreen = '/check_out_three_one_screen';

  static const String myOrdersOneOnePage = '/my_orders_one_one_page';

  static const String myOrdersTwoOnePage = '/my_orders_two_one_page';

  static const String myOrdersThreeOnePage = '/my_orders_three_one_page';

  static const String orderInfoOneOneScreen = '/order_info_one_one_screen';

  static const String rateProductOne1Screen = '/rate_product_one1_screen';

  static const String orderInfoTwoOneScreen = '/order_info_two_one_screen';

  static const String trackOrderOneScreen = '/track_order_one_screen';

  static const String homepageFullThreeScreen = '/homepage_full_three_screen';

  static const String homepageTwoScreen = '/homepage_two_screen';

  static const String discoverOneScreen = '/discover_one_screen';

  static const String searchThreeScreen = '/search_three_screen';

  static const String searchTwo1Screen = '/search_two1_screen';

  static const String foundResultsTwoScreen = '/found_results_two_screen';

  static const String productFullTwoScreen = '/product_full_two_screen';

  static const String yourCartTwoScreen = '/your_cart_two_screen';

  static const String checkOutOneTwoScreen = '/check_out_one_two_screen';

  static const String checkOutTwoTwoScreen = '/check_out_two_two_screen';

  static const String checkOutThreeTwoScreen = '/check_out_three_two_screen';

  static const String myOrdersOneTwoPage = '/my_orders_one_two_page';

  static const String myOrdersTwoTwoPage = '/my_orders_two_two_page';

  static const String myOrdersThreeTwoPage = '/my_orders_three_two_page';

  static const String orderInfoOneTwoScreen = '/order_info_one_two_screen';

  static const String rateProductTwo1Screen = '/rate_product_two1_screen';

  static const String orderInfoTwoTwoScreen = '/order_info_two_two_screen';

  static const String trackOrderTwoScreen = '/track_order_two_screen';

  static const String iphone11ProXTwentyoneScreen =
      '/iphone_11_pro_x_twentyone_screen';

  static const String discoverThreeScreen = '/discover_three_screen';

  static const String filterOneScreen = '/filter_one_screen';

  static const String productThreeScreen = '/product_three_screen';

  static const String rateProductOneThreeScreen =
      '/rate_product_one_three_screen';

  static const String rateProductOneOneScreen = '/rate_product_one_one_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String collectionOneOneScreen = '/collection_one_one_screen';

  static const String collectionTwoOneScreen = '/collection_two_one_screen';

  static const String profileTwoScreen = '/profile_two_screen';

  static const String myWishlistAllItemsTwoPage =
      '/my_wishlist_all_items_two_page';

  static const String myWishlistBoardsOnePage = '/my_wishlist_boards_one_page';

  static const String profileSettingTwoScreen = '/profile_setting_two_screen';

  static const String paymentOneScreen = '/payment_one_screen';

  static const String addNewCardOneScreen = '/add_new_card_one_screen';

  static const String newCardTwoScreen = '/new_card_two_screen';

  static const String voucherTwoScreen = '/voucher_two_screen';

  static const String addressTwoScreen = '/address_two_screen';

  static const String chatSupportTwoScreen = '/chat_support_two_screen';

  static const String settingThreeScreen = '/setting_three_screen';

  static const String notificationSettingTwoScreen =
      '/notification_setting_two_screen';

  static const String notificationTwoScreen = '/notification_two_screen';

  static const String collectionOneTwoScreen = '/collection_one_two_screen';

  static const String collectionTwoTwoScreen = '/collection_two_two_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String myWishlistAllItemsOnePage =
      '/my_wishlist_all_items_one_page';

  static const String myWishlistBoardsTwoPage = '/my_wishlist_boards_two_page';

  static const String profileSettingOneScreen = '/profile_setting_one_screen';

  static const String paymentTwoScreen = '/payment_two_screen';

  static const String addNewCardTwoScreen = '/add_new_card_two_screen';

  static const String newCardOneScreen = '/new_card_one_screen';

  static const String voucherOneScreen = '/voucher_one_screen';

  static const String addressOneScreen = '/address_one_screen';

  static const String chatSupportOneScreen = '/chat_support_one_screen';

  static const String settingScreen = '/setting_screen';

  static const String notificationSettingScreen =
      '/notification_setting_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreen: WelcomeScreen.builder,
        introOneScreen: IntroOneScreen.builder,
        signUpScreen: SignUpScreen.builder,
        logInScreen: LogInScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        verificationCodeScreen: VerificationCodeScreen.builder,
        createNewPasswordScreen: CreateNewPasswordScreen.builder,
        createNewPasswordTwoScreen: CreateNewPasswordTwoScreen.builder,
        homepageScreen: HomepageScreen.builder,
        homepageFullScreen: HomepageFullScreen.builder,
        discoverScreen: DiscoverScreen.builder,
        searchScreen: SearchScreen.builder,
        searchTwoScreen: SearchTwoScreen.builder,
        foundResultsScreen: FoundResultsScreen.builder,
        productFullScreen: ProductFullScreen.builder,
        productScreen: ProductScreen.builder,
        yourCartScreen: YourCartScreen.builder,
        checkOutOneScreen: CheckOutOneScreen.builder,
        checkOutTwoScreen: CheckOutTwoScreen.builder,
        checkOutThreeScreen: CheckOutThreeScreen.builder,
        myOrdersThreeTabContainerScreen:
            MyOrdersThreeTabContainerScreen.builder,
        orderInfoOneScreen: OrderInfoOneScreen.builder,
        rateProductScreen: RateProductScreen.builder,
        orderInfoTwoScreen: OrderInfoTwoScreen.builder,
        trackOrderScreen: TrackOrderScreen.builder,
        discoverFullScreen: DiscoverFullScreen.builder,
        filterScreen: FilterScreen.builder,
        productOneScreen: ProductOneScreen.builder,
        rateProductOneScreen: RateProductOneScreen.builder,
        notificationScreen: NotificationScreen.builder,
        collectionOneScreen: CollectionOneScreen.builder,
        collectionTwoScreen: CollectionTwoScreen.builder,
        profileScreen: ProfileScreen.builder,
        myWishlistBoardsTabContainerScreen:
            MyWishlistBoardsTabContainerScreen.builder,
        profileSettingScreen: ProfileSettingScreen.builder,
        paymentScreen: PaymentScreen.builder,
        addNewCardScreen: AddNewCardScreen.builder,
        newCardScreen: NewCardScreen.builder,
        voucherScreen: VoucherScreen.builder,
        addressScreen: AddressScreen.builder,
        chatSupportScreen: ChatSupportScreen.builder,
        settingTwoScreen: SettingTwoScreen.builder,
        notificationSettingOneScreen: NotificationSettingOneScreen.builder,
        welcomeTwoScreen: WelcomeTwoScreen.builder,
        introOneOneScreen: IntroOneOneScreen.builder,
        introTwoOneScreen: IntroTwoOneScreen.builder,
        introThreeOneScreen: IntroThreeOneScreen.builder,
        signUpOneScreen: SignUpOneScreen.builder,
        logInTwoScreen: LogInTwoScreen.builder,
        forgotPasswordOneScreen: ForgotPasswordOneScreen.builder,
        verificationCodeTwoScreen: VerificationCodeTwoScreen.builder,
        createNewPasswordTwo1Screen: CreateNewPasswordTwo1Screen.builder,
        createNewPasswordTwoOneScreen: CreateNewPasswordTwoOneScreen.builder,
        welcomeOneScreen: WelcomeOneScreen.builder,
        introFourScreen: IntroFourScreen.builder,
        introSixScreen: IntroSixScreen.builder,
        introFiveScreen: IntroFiveScreen.builder,
        signUpTwoScreen: SignUpTwoScreen.builder,
        logInOneScreen: LogInOneScreen.builder,
        forgotPasswordTwoScreen: ForgotPasswordTwoScreen.builder,
        verificationCodeOneScreen: VerificationCodeOneScreen.builder,
        createNewPasswordOneScreen: CreateNewPasswordOneScreen.builder,
        createNewPasswordThreeScreen: CreateNewPasswordThreeScreen.builder,
        createNewPasswordFourScreen: CreateNewPasswordFourScreen.builder,
        homepageFullTwoScreen: HomepageFullTwoScreen.builder,
        homepageOneScreen: HomepageOneScreen.builder,
        homepageFullOneScreen: HomepageFullOneScreen.builder,
        discoverTwoScreen: DiscoverTwoScreen.builder,
        searchOneScreen: SearchOneScreen.builder,
        searchTwoOneScreen: SearchTwoOneScreen.builder,
        foundResultsOneScreen: FoundResultsOneScreen.builder,
        productFullOneScreen: ProductFullOneScreen.builder,
        productTwoScreen: ProductTwoScreen.builder,
        yourCartOneScreen: YourCartOneScreen.builder,
        checkOutOneOneScreen: CheckOutOneOneScreen.builder,
        checkOutTwoOneScreen: CheckOutTwoOneScreen.builder,
        checkOutThreeOneScreen: CheckOutThreeOneScreen.builder,
        orderInfoOneOneScreen: OrderInfoOneOneScreen.builder,
        rateProductOne1Screen: RateProductOne1Screen.builder,
        orderInfoTwoOneScreen: OrderInfoTwoOneScreen.builder,
        trackOrderOneScreen: TrackOrderOneScreen.builder,
        homepageFullThreeScreen: HomepageFullThreeScreen.builder,
        homepageTwoScreen: HomepageTwoScreen.builder,
        discoverOneScreen: DiscoverOneScreen.builder,
        searchThreeScreen: SearchThreeScreen.builder,
        searchTwo1Screen: SearchTwo1Screen.builder,
        foundResultsTwoScreen: FoundResultsTwoScreen.builder,
        productFullTwoScreen: ProductFullTwoScreen.builder,
        yourCartTwoScreen: YourCartTwoScreen.builder,
        checkOutOneTwoScreen: CheckOutOneTwoScreen.builder,
        checkOutTwoTwoScreen: CheckOutTwoTwoScreen.builder,
        checkOutThreeTwoScreen: CheckOutThreeTwoScreen.builder,
        orderInfoOneTwoScreen: OrderInfoOneTwoScreen.builder,
        rateProductTwo1Screen: RateProductTwo1Screen.builder,
        orderInfoTwoTwoScreen: OrderInfoTwoTwoScreen.builder,
        trackOrderTwoScreen: TrackOrderTwoScreen.builder,
        iphone11ProXTwentyoneScreen: Iphone11ProXTwentyoneScreen.builder,
        discoverThreeScreen: DiscoverThreeScreen.builder,
        filterOneScreen: FilterOneScreen.builder,
        productThreeScreen: ProductThreeScreen.builder,
        rateProductOneThreeScreen: RateProductOneThreeScreen.builder,
        rateProductOneOneScreen: RateProductOneOneScreen.builder,
        notificationOneScreen: NotificationOneScreen.builder,
        collectionOneOneScreen: CollectionOneOneScreen.builder,
        collectionTwoOneScreen: CollectionTwoOneScreen.builder,
        profileTwoScreen: ProfileTwoScreen.builder,
        profileSettingTwoScreen: ProfileSettingTwoScreen.builder,
        paymentOneScreen: PaymentOneScreen.builder,
        addNewCardOneScreen: AddNewCardOneScreen.builder,
        newCardTwoScreen: NewCardTwoScreen.builder,
        voucherTwoScreen: VoucherTwoScreen.builder,
        addressTwoScreen: AddressTwoScreen.builder,
        chatSupportTwoScreen: ChatSupportTwoScreen.builder,
        settingThreeScreen: SettingThreeScreen.builder,
        notificationSettingTwoScreen: NotificationSettingTwoScreen.builder,
        notificationTwoScreen: NotificationTwoScreen.builder,
        collectionOneTwoScreen: CollectionOneTwoScreen.builder,
        collectionTwoTwoScreen: CollectionTwoTwoScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        profileSettingOneScreen: ProfileSettingOneScreen.builder,
        paymentTwoScreen: PaymentTwoScreen.builder,
        addNewCardTwoScreen: AddNewCardTwoScreen.builder,
        newCardOneScreen: NewCardOneScreen.builder,
        voucherOneScreen: VoucherOneScreen.builder,
        addressOneScreen: AddressOneScreen.builder,
        chatSupportOneScreen: ChatSupportOneScreen.builder,
        settingScreen: SettingScreen.builder,
        notificationSettingScreen: NotificationSettingScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreen.builder
      };
}
