import '../voucher_screen/widgets/userprofile3_item_widget.dart';
import 'bloc/voucher_bloc.dart';
import 'models/userprofile3_item_model.dart';
import 'models/voucher_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VoucherBloc>(
      create: (context) => VoucherBloc(VoucherState(
        voucherModelObj: VoucherModel(),
      ))
        ..add(VoucherInitialEvent()),
      child: VoucherScreen(),
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
            child: _buildUserProfile(context),
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<VoucherBloc, VoucherState, VoucherModel?>(
        selector: (state) => state.voucherModelObj,
        builder: (context, voucherModelObj) {
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
            itemCount: voucherModelObj?.userprofile3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile3ItemModel model =
                  voucherModelObj?.userprofile3ItemList[index] ??
                      Userprofile3ItemModel();
              return Userprofile3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
