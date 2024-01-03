import '../address_one_screen/widgets/userprofile16_item_widget.dart';
import 'bloc/address_one_bloc.dart';
import 'models/address_one_model.dart';
import 'models/userprofile16_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class AddressOneScreen extends StatelessWidget {
  const AddressOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddressOneBloc>(
      create: (context) => AddressOneBloc(AddressOneState(
        addressOneModelObj: AddressOneModel(),
      ))
        ..add(AddressOneInitialEvent()),
      child: AddressOneScreen(),
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
            padding: EdgeInsets.only(top: 39.v),
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
                    buttonStyle: CustomButtonStyles.fillGrayTL25,
                    buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
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
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_delivery_address".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<AddressOneBloc, AddressOneState, AddressOneModel?>(
      selector: (state) => state.addressOneModelObj,
      builder: (context, addressOneModelObj) {
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
          itemCount: addressOneModelObj?.userprofile16ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile16ItemModel model =
                addressOneModelObj?.userprofile16ItemList[index] ??
                    Userprofile16ItemModel();
            return Userprofile16ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
