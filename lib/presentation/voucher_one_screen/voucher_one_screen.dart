import '../voucher_one_screen/widgets/dynamicview1_item_widget.dart';
import 'bloc/voucher_one_bloc.dart';
import 'models/dynamicview1_item_model.dart';
import 'models/voucher_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class VoucherOneScreen extends StatelessWidget {
  const VoucherOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VoucherOneBloc>(
      create: (context) => VoucherOneBloc(VoucherOneState(
        voucherOneModelObj: VoucherOneModel(),
      ))
        ..add(VoucherOneInitialEvent()),
      child: VoucherOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 48.v),
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
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_voucher".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<VoucherOneBloc, VoucherOneState, VoucherOneModel?>(
        selector: (state) => state.voucherOneModelObj,
        builder: (context, voucherOneModelObj) {
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
            itemCount: voucherOneModelObj?.dynamicview1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Dynamicview1ItemModel model =
                  voucherOneModelObj?.dynamicview1ItemList[index] ??
                      Dynamicview1ItemModel();
              return Dynamicview1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
