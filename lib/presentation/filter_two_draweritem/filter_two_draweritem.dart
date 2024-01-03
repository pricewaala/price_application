import '../filter_two_draweritem/widgets/filtertwo_item_widget.dart';
import '../filter_two_draweritem/widgets/signal_item_widget.dart';
import 'bloc/filter_two_bloc.dart';
import 'models/filter_two_model.dart';
import 'models/filtertwo_item_model.dart';
import 'models/signal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_drop_down.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FilterTwoDraweritem extends StatelessWidget {
  const FilterTwoDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 302.h,
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 40.v,
        ),
        decoration: AppDecoration.fillGray90005.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "lbl_filter".tr,
                      style: CustomTextStyles.titleLargeProductSansGray5006Bold,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionGray500627x27,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Divider(
              color: appTheme.gray90007,
            ),
            SizedBox(height: 22.v),
            _buildPriceSection(context),
            SizedBox(height: 38.v),
            _buildColorSection(context),
            SizedBox(height: 30.v),
            _buildStarRatingSection(context),
            SizedBox(height: 39.v),
            _buildCategorySection(context),
            SizedBox(height: 38.v),
            _buildDiscountSection(context),
            SizedBox(height: 46.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 28.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 13.v,
                      ),
                      child: Text(
                        "lbl_reset".tr,
                        style: CustomTextStyles.bodyMediumGray90009,
                      ),
                    ),
                    CustomElevatedButton(
                      height: 40.v,
                      width: 113.h,
                      text: "lbl_apply".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL22,
                      buttonTextStyle: CustomTextStyles.bodyMediumGray90005,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 4.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_price".tr,
              style: CustomTextStyles.titleSmallGray5006_1,
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            height: 16.v,
            width: 241.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 2.v,
                    width: 238.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 238.h,
                            child: Divider(
                              color: appTheme.gray80001,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 160.h,
                            child: Divider(
                              color: appTheme.gray5006,
                              indent: 5.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray90004,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 16.v,
                    width: 17.h,
                    margin: EdgeInsets.only(right: 71.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray90004,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 70.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_10".tr,
                  style: CustomTextStyles.labelLargeGray10001_1,
                ),
                Text(
                  "lbl_802".tr,
                  style: CustomTextStyles.labelLargeGray10001_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColorSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_color".tr,
            style: CustomTextStyles.bodyMediumGray5006,
          ),
          SizedBox(height: 30.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup33165,
            height: 22.v,
            width: 244.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStarRatingSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_star_rating".tr,
              style: CustomTextStyles.bodyMediumGray5006,
            ),
          ),
          SizedBox(height: 23.v),
          BlocSelector<FilterTwoBloc, FilterTwoState, FilterTwoModel?>(
            selector: (state) => state.filterTwoModelObj,
            builder: (context, filterTwoModelObj) {
              return Wrap(
                runSpacing: 14.v,
                spacing: 14.h,
                children: List<Widget>.generate(
                  filterTwoModelObj?.signalItemList.length ?? 0,
                  (index) {
                    SignalItemModel model =
                        filterTwoModelObj?.signalItemList[index] ??
                            SignalItemModel();

                    return SignalItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<FilterTwoBloc>().add(UpdateChipViewEvent(
                            index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategorySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_category".tr,
              style: CustomTextStyles.bodyMediumGray5006,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: BlocSelector<FilterTwoBloc, FilterTwoState, FilterTwoModel?>(
              selector: (state) => state.filterTwoModelObj,
              builder: (context, filterTwoModelObj) {
                return CustomDropDown(
                  hintText: "lbl_crop_tops".tr,
                  hintStyle: CustomTextStyles.labelLargeNunitoGray200,
                  items: filterTwoModelObj?.dropdownItemList ?? [],
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(21.h, 10.v, 13.h, 10.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsupGray5006,
                      height: 17.v,
                      width: 14.h,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 38.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 10.v,
                    right: 30.h,
                    bottom: 10.v,
                  ),
                  onChanged: (value) {
                    context
                        .read<FilterTwoBloc>()
                        .add(ChangeDropDownEvent(value: value));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_discount".tr,
            style: CustomTextStyles.bodyMediumGray5006,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 34.h),
            child: BlocSelector<FilterTwoBloc, FilterTwoState, FilterTwoModel?>(
              selector: (state) => state.filterTwoModelObj,
              builder: (context, filterTwoModelObj) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 39.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 13.h,
                    crossAxisSpacing: 13.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: filterTwoModelObj?.filtertwoItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    FiltertwoItemModel model =
                        filterTwoModelObj?.filtertwoItemList[index] ??
                            FiltertwoItemModel();
                    return FiltertwoItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
