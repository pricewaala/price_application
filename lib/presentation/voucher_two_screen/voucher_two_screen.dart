import '../voucher_two_screen/widgets/dynamicview_item_widget.dart';
import 'bloc/voucher_two_bloc.dart';
import 'models/dynamicview_item_model.dart';
import 'models/voucher_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class VoucherTwoScreen extends StatelessWidget {
  const VoucherTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VoucherTwoBloc>(
      create: (context) => VoucherTwoBloc(VoucherTwoState(
        voucherTwoModelObj: VoucherTwoModel(),
      ))
        ..add(VoucherTwoInitialEvent()),
      child: VoucherTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.v),
            child: _buildDynamicView(context),
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
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_voucher".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<VoucherTwoBloc, VoucherTwoState, VoucherTwoModel?>(
        selector: (state) => state.voucherTwoModelObj,
        builder: (context, voucherTwoModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 28.v,
              );
            },
            itemCount: voucherTwoModelObj?.dynamicviewItemList.length ?? 0,
            itemBuilder: (context, index) {
              DynamicviewItemModel model =
                  voucherTwoModelObj?.dynamicviewItemList[index] ??
                      DynamicviewItemModel();
              return DynamicviewItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
