import '../intro_six_screen/widgets/shoppingnowframe1_item_widget.dart';import 'bloc/intro_six_bloc.dart';import 'models/intro_six_model.dart';import 'models/shoppingnowframe1_item_model.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:price_s_application2/core/app_export.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class IntroSixScreen extends StatelessWidget {const IntroSixScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<IntroSixBloc>(create: (context) => IntroSixBloc(IntroSixState(introSixModelObj: IntroSixModel()))..add(IntroSixInitialEvent()), child: IntroSixScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 60.v), Text("msg_update_trendy_outfit".tr, style: CustomTextStyles.titleLargeProductSansBlack900Bold), SizedBox(height: 22.v), Text("msg_favorite_brands".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: SizedBox(height: 621.v, width: 536.h, child: Stack(alignment: Alignment.bottomRight, children: [_buildShoppingNowFrame(context), Align(alignment: Alignment.bottomRight, child: BlocBuilder<IntroSixBloc, IntroSixState>(builder: (context, state) {return Container(height: 6.v, margin: EdgeInsets.only(right: 170.h, bottom: 190.v), child: AnimatedSmoothIndicator(activeIndex: state.sliderIndex, count: state.introSixModelObj?.shoppingnowframe1ItemList.length ?? 0, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, dotColor: appTheme.whiteA700, dotHeight: 6.v, dotWidth: 6.h)));}))])))])))); } 
/// Section Widget
Widget _buildShoppingNowFrame(BuildContext context) { return BlocBuilder<IntroSixBloc, IntroSixState>(builder: (context, state) {return CarouselSlider.builder(options: CarouselOptions(height: 621.v, initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {state.sliderIndex = index;}), itemCount: state.introSixModelObj?.shoppingnowframe1ItemList.length ?? 0, itemBuilder: (context, index, realIndex) {Shoppingnowframe1ItemModel model = state.introSixModelObj?.shoppingnowframe1ItemList[index] ?? Shoppingnowframe1ItemModel(); return Shoppingnowframe1ItemWidget(model, onTapFashionPng: () {onTapFashionPng(context);});});}); } 
/// Navigates to the introFiveScreen when the action is triggered.
onTapFashionPng(BuildContext context) { NavigatorService.pushNamed(AppRoutes.introFiveScreen, ); } 
 }
