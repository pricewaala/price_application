import '../address_two_screen/widgets/userprofile15_item_widget.dart';
import 'bloc/address_two_bloc.dart';
import 'models/address_two_model.dart';
import 'models/userprofile15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class AddressTwoScreen extends StatelessWidget {
  const AddressTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddressTwoBloc>(
      create: (context) => AddressTwoBloc(AddressTwoState(
        addressTwoModelObj: AddressTwoModel(),
      ))
        ..add(AddressTwoInitialEvent()),
      child: AddressTwoScreen(),
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
            padding: EdgeInsets.only(top: 41.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                right: 30.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildUserProfile(context),
                  SizedBox(height: 183.v),
                  CustomElevatedButton(
                    width: 203.h,
                    text: "lbl_add_new_address".tr,
                  ),
                ],
              ),
            ),
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
        text: "msg_delivery_address".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<AddressTwoBloc, AddressTwoState, AddressTwoModel?>(
      selector: (state) => state.addressTwoModelObj,
      builder: (context, addressTwoModelObj) {
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
          itemCount: addressTwoModelObj?.userprofile15ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile15ItemModel model =
                addressTwoModelObj?.userprofile15ItemList[index] ??
                    Userprofile15ItemModel();
            return Userprofile15ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
