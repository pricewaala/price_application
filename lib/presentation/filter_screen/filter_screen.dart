import '../filter_screen/widgets/frame_item_widget.dart';import 'bloc/filter_bloc.dart';import 'models/filter_model.dart';import 'models/frame_item_model.dart';import 'package:flutter/material.dart';import 'package:price_s_application2/core/app_export.dart';import 'package:price_s_application2/widgets/custom_drop_down.dart';import 'package:price_s_application2/widgets/custom_elevated_button.dart';import 'package:price_s_application2/widgets/custom_icon_button.dart';import 'package:price_s_application2/widgets/custom_pin_code_text_field.dart';class FilterScreen extends StatelessWidget {const FilterScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FilterBloc>(create: (context) => FilterBloc(FilterState(filterModelObj: FilterModel()))..add(FilterInitialEvent()), child: FilterScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(height: 777.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomRight, children: [_buildArrowLeftSection(context), _buildLihuaTunicWhiteSection(context), Align(alignment: Alignment.center, child: Container(height: 777.v, width: double.maxFinite, decoration: AppDecoration.fillBlack900, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.centerRight, child: Container(height: 777.v, width: 302.h, decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.horizontal(left: Radius.circular(30.h))))), Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(top: 5.v, right: 26.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(right: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 3.v), child: Text("lbl_filter".tr, style: CustomTextStyles.titleLargeProductSansBluegray90004)), CustomImageView(imagePath: ImageConstant.imgSendBlueGray90004, height: 27.adaptSize, width: 27.adaptSize, margin: EdgeInsets.only(left: 170.h))])), SizedBox(height: 29.v), Divider(endIndent: 2.h), SizedBox(height: 22.v), _buildPriceSection(context), SizedBox(height: 38.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_color".tr, style: CustomTextStyles.bodyMediumBluegray90004)), SizedBox(height: 23.v), CustomImageView(imagePath: ImageConstant.imgGroup33165, height: 22.v, width: 244.h), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_star_rating".tr, style: CustomTextStyles.bodyMediumBluegray90004))), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(right: 2.h), child: BlocSelector<FilterBloc, FilterState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), SizedBox(height: 39.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_category".tr, style: CustomTextStyles.bodyMediumBluegray90004))), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 3.h), child: BlocSelector<FilterBloc, FilterState, FilterModel?>(selector: (state) => state.filterModelObj, builder: (context, filterModelObj) {return CustomDropDown(hintText: "lbl_crop_tops".tr, hintStyle: CustomTextStyles.labelLargeNunitoBluegray90004, items: filterModelObj?.dropdownItemList ?? [], prefix: Container(margin: EdgeInsets.fromLTRB(21.h, 10.v, 13.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsupBlack900, height: 17.v, width: 14.h)), prefixConstraints: BoxConstraints(maxHeight: 38.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v), borderDecoration: DropDownStyleHelper.outlineBlueGrayTL19, onChanged: (value) {context.read<FilterBloc>().add(ChangeDropDownEvent(value: value));});})), SizedBox(height: 38.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_discount".tr, style: CustomTextStyles.bodyMediumBluegray90004)))]))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 116.h, bottom: 191.v), child: Text("lbl_50_off".tr, style: CustomTextStyles.labelLargeNunitoBluegray90004))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 116.h, bottom: 136.v), child: Text("lbl_30_off".tr, style: CustomTextStyles.labelLargeNunitoBluegray90004))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 97.h, bottom: 136.v), child: Text("lbl_25_off".tr, style: CustomTextStyles.labelLargeNunitoBluegray90004))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 97.h, bottom: 191.v), child: Text("lbl_40_off".tr, style: CustomTextStyles.labelLargeNunitoBluegray90004))), Align(alignment: Alignment.bottomLeft, child: Container(height: 38.v, width: 99.h, margin: EdgeInsets.only(left: 102.h, bottom: 181.v), padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v), decoration: AppDecoration.outlineBluegray90004.copyWith(borderRadius: BorderRadiusStyle.circleBorder21), child: CustomImageView(imagePath: ImageConstant.imgCloseBlueGray90004, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerRight))), Align(alignment: Alignment.bottomLeft, child: Container(height: 38.v, width: 99.h, margin: EdgeInsets.only(left: 102.h, bottom: 126.v), padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v), decoration: AppDecoration.outlineBluegray90004.copyWith(borderRadius: BorderRadiusStyle.circleBorder21), child: CustomImageView(imagePath: ImageConstant.imgCloseBlueGray90004, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerRight))), Align(alignment: Alignment.bottomRight, child: Container(height: 38.v, width: 99.h, margin: EdgeInsets.only(right: 62.h, bottom: 126.v), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v), decoration: AppDecoration.outlineBluegray90004.copyWith(borderRadius: BorderRadiusStyle.circleBorder21), child: CustomImageView(imagePath: ImageConstant.imgCloseBlueGray90004, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerRight))), Align(alignment: Alignment.bottomRight, child: Container(height: 38.v, width: 99.h, margin: EdgeInsets.only(right: 62.h, bottom: 181.v), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v), decoration: AppDecoration.outlineBluegray90004.copyWith(borderRadius: BorderRadiusStyle.circleBorder21), child: CustomImageView(imagePath: ImageConstant.imgCloseBlueGray90004, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerRight))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 54.h, bottom: 40.v), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 13.v), child: Text("lbl_reset".tr, style: CustomTextStyles.bodyMediumGray90009)), CustomElevatedButton(height: 40.v, width: 113.h, text: "lbl_apply".tr, margin: EdgeInsets.only(left: 56.h), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700)])))])))])))); } 
/// Section Widget
Widget _buildArrowLeftSection(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 30.h, top: 24.v, right: 27.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 36.adaptSize, width: 36.adaptSize, alignment: Alignment.centerLeft, onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 2.h, right: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(top: 2.v), padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 13.v), decoration: AppDecoration.outlineBlack9005.copyWith(borderRadius: BorderRadiusStyle.circleBorder21), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSearchBlueGray40001, height: 17.adaptSize, width: 17.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_search".tr, style: theme.textTheme.titleSmall))]))), Padding(padding: EdgeInsets.only(left: 14.h), child: CustomIconButton(height: 49.v, width: 51.h, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgSend)))])), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_recent_searches".tr, style: CustomTextStyles.titleMediumNunitoBluegray90004), CustomImageView(imagePath: ImageConstant.imgThumbsUpBlueGray90004, height: 21.adaptSize, width: 21.adaptSize)])), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(width: 163.h, padding: EdgeInsets.symmetric(vertical: 7.v), decoration: AppDecoration.fillGray5007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_sunglasses".tr, style: CustomTextStyles.titleMediumNunitoBluegray90004SemiBold)), CustomImageView(imagePath: ImageConstant.imgClose, height: 21.adaptSize, width: 21.adaptSize, margin: EdgeInsets.only(top: 1.v))])), Container(padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v), decoration: AppDecoration.fillGray5007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_sweater".tr, style: CustomTextStyles.titleMediumNunitoBluegray90004SemiBold)), CustomImageView(imagePath: ImageConstant.imgClose, height: 21.adaptSize, width: 21.adaptSize, radius: BorderRadius.circular(10.h), margin: EdgeInsets.only(left: 13.h))]))])), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Container(padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v), decoration: AppDecoration.fillGray5007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 8.h, bottom: 1.v), child: Text("lbl_hoodie".tr, style: CustomTextStyles.titleMediumNunitoBluegray90004SemiBold)), CustomImageView(imagePath: ImageConstant.imgClose, height: 21.adaptSize, width: 21.adaptSize, radius: BorderRadius.circular(10.h), margin: EdgeInsets.only(left: 21.h))]))), SizedBox(height: 81.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 5.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_popular_this_week".tr, style: CustomTextStyles.titleLargeProductSansBlack900), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 5.v), child: Text("lbl_show_all".tr, style: CustomTextStyles.bodyMediumGray50004))]))]))); } 
/// Section Widget
Widget _buildLihuaTunicWhiteSection(BuildContext context) { return Align(alignment: Alignment.bottomRight, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 32.h, top: 424.v, bottom: 128.v), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgMaskGroup1, height: 172.v, width: 126.h), SizedBox(height: 11.v), BlocSelector<FilterBloc, FilterState, FilterModel?>(selector: (state) => state.filterModelObj, builder: (context, filterModelObj) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(filterModelObj?.frameItemList.length ?? 0, (index) {FrameItemModel model = filterModelObj?.frameItemList[index] ?? FrameItemModel(); return FrameItemWidget(model, onSelectedChipView: (value) {context.read<FilterBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));})]), Padding(padding: EdgeInsets.only(left: 20.h), child: _buildKimiGreenDressSection(context, image: ImageConstant.imgMaskGroup2, text: "lbl_skirt_dress".tr, text1: "lbl_34_00".tr)), Padding(padding: EdgeInsets.only(left: 20.h), child: _buildKimiGreenDressSection(context, image: ImageConstant.imgMaskGroup3, text: "msg_kimi_green_dress".tr, text1: "lbl_47_99".tr))])))); } 
/// Section Widget
Widget _buildPriceSection(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 2.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_price".tr, style: CustomTextStyles.titleSmallBluegray90004)), SizedBox(height: 16.v), Container(height: 16.v, width: 241.h, margin: EdgeInsets.only(left: 1.h), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: SizedBox(height: 2.v, width: 238.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: SizedBox(width: 238.h, child: Divider(color: appTheme.gray10002))), Align(alignment: Alignment.centerLeft, child: SizedBox(width: 160.h, child: Divider(color: appTheme.blueGray90004, indent: 5.h)))]))), Align(alignment: Alignment.centerLeft, child: Container(height: 16.adaptSize, width: 16.adaptSize, decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.blueGray90004, width: 1.h)))), Align(alignment: Alignment.centerRight, child: Container(height: 16.v, width: 17.h, margin: EdgeInsets.only(right: 71.h), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.blueGray90004, width: 1.h))))])), SizedBox(height: 7.v), Row(children: [Text("lbl_10".tr, style: CustomTextStyles.labelLargeBluegray90004), Padding(padding: EdgeInsets.only(left: 132.h), child: Text("lbl_802".tr, style: CustomTextStyles.labelLargeBluegray90004))])])); } 
/// Common widget
Widget _buildKimiGreenDressSection(BuildContext context, {required String image, required String text, required String text1, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: image, height: 172.v, width: 126.h), SizedBox(height: 11.v), Text(text, style: theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onPrimaryContainer)), SizedBox(height: 6.v), Text(text1, style: CustomTextStyles.titleMediumOnPrimaryContainer.copyWith(color: theme.colorScheme.onPrimaryContainer))]); } 

/// Navigates to the previous screen.
onTapImgArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }