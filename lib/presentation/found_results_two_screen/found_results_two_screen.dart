import '../found_results_two_screen/widgets/productcardgrid4_item_widget.dart';
import 'bloc/found_results_two_bloc.dart';
import 'models/found_results_two_model.dart';
import 'models/productcardgrid4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_drop_down.dart';

class FoundResultsTwoScreen extends StatelessWidget {
  const FoundResultsTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FoundResultsTwoBloc>(
      create: (context) => FoundResultsTwoBloc(FoundResultsTwoState(
        foundResultsTwoModelObj: FoundResultsTwoModel(),
      ))
        ..add(FoundResultsTwoInitialEvent()),
      child: FoundResultsTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              _buildFoundResultsRow(context),
              SizedBox(height: 36.v),
              _buildProductCardGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      title: AppbarSubtitleFive(
        text: "lbl_dresses".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFoundResultsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 106.h,
          child: Text(
            "msg_found_152_results".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleLargeProductSansGray5006Bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 102.h,
            top: 6.v,
            bottom: 4.v,
          ),
          child: BlocSelector<FoundResultsTwoBloc, FoundResultsTwoState,
              FoundResultsTwoModel?>(
            selector: (state) => state.foundResultsTwoModelObj,
            builder: (context, foundResultsTwoModelObj) {
              return CustomDropDown(
                width: 97.h,
                hintText: "lbl_filter".tr,
                items: foundResultsTwoModelObj?.dropdownItemList ?? [],
                borderDecoration: DropDownStyleHelper.outlinePrimaryContainer,
                onChanged: (value) {
                  context
                      .read<FoundResultsTwoBloc>()
                      .add(ChangeDropDownEvent(value: value));
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCardGrid(BuildContext context) {
    return Expanded(
      child: BlocSelector<FoundResultsTwoBloc, FoundResultsTwoState,
          FoundResultsTwoModel?>(
        selector: (state) => state.foundResultsTwoModelObj,
        builder: (context, foundResultsTwoModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 271.v,
              crossAxisCount: 2,
              mainAxisSpacing: 29.h,
              crossAxisSpacing: 29.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount:
                foundResultsTwoModelObj?.productcardgrid4ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcardgrid4ItemModel model =
                  foundResultsTwoModelObj?.productcardgrid4ItemList[index] ??
                      Productcardgrid4ItemModel();
              return Productcardgrid4ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
