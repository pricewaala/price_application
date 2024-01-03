import '../found_results_one_screen/widgets/productcardgrid3_item_widget.dart';
import 'bloc/found_results_one_bloc.dart';
import 'models/found_results_one_model.dart';
import 'models/productcardgrid3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_drop_down.dart';

class FoundResultsOneScreen extends StatelessWidget {
  const FoundResultsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FoundResultsOneBloc>(
      create: (context) => FoundResultsOneBloc(FoundResultsOneState(
        foundResultsOneModelObj: FoundResultsOneModel(),
      ))
        ..add(FoundResultsOneInitialEvent()),
      child: FoundResultsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 13.v,
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
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      title: AppbarSubtitleSeven(
        text: "lbl_dresses".tr,
        margin: EdgeInsets.only(left: 19.h),
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
            style: CustomTextStyles.titleLargeProductSansBluegray90004,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 102.h,
            top: 6.v,
            bottom: 4.v,
          ),
          child: BlocSelector<FoundResultsOneBloc, FoundResultsOneState,
              FoundResultsOneModel?>(
            selector: (state) => state.foundResultsOneModelObj,
            builder: (context, foundResultsOneModelObj) {
              return CustomDropDown(
                width: 97.h,
                hintText: "lbl_filter".tr,
                items: foundResultsOneModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context
                      .read<FoundResultsOneBloc>()
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
      child: BlocSelector<FoundResultsOneBloc, FoundResultsOneState,
          FoundResultsOneModel?>(
        selector: (state) => state.foundResultsOneModelObj,
        builder: (context, foundResultsOneModelObj) {
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
                foundResultsOneModelObj?.productcardgrid3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productcardgrid3ItemModel model =
                  foundResultsOneModelObj?.productcardgrid3ItemList[index] ??
                      Productcardgrid3ItemModel();
              return Productcardgrid3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
