import 'bloc/create_new_password_two1_bloc.dart';import 'models/create_new_password_two1_model.dart';import 'package:flutter/material.dart';import 'package:price_s_application2/core/app_export.dart';import 'package:price_s_application2/core/utils/validation_functions.dart';import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';import 'package:price_s_application2/widgets/custom_elevated_button.dart';import 'package:price_s_application2/widgets/custom_text_form_field.dart';import 'package:price_s_application2/presentation/password_changed_one_bottomsheet/password_changed_one_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class CreateNewPasswordTwo1Screen extends StatelessWidget {CreateNewPasswordTwo1Screen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<CreateNewPasswordTwo1Bloc>(create: (context) => CreateNewPasswordTwo1Bloc(CreateNewPasswordTwo1State(createNewPasswordTwo1ModelObj: CreateNewPasswordTwo1Model()))..add(CreateNewPasswordTwo1InitialEvent()), child: CreateNewPasswordTwo1Screen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 38.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text("msg_create_new_password".tr, style: CustomTextStyles.headlineSmall_1))), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Container(width: 262.h, margin: EdgeInsets.only(left: 3.h, right: 45.h), child: Text("msg_your_new_password".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumProductSansLight.copyWith(height: 1.71)))), SizedBox(height: 80.v), BlocSelector<CreateNewPasswordTwo1Bloc, CreateNewPasswordTwo1State, TextEditingController?>(selector: (state) => state.newpasswordController, builder: (context, newpasswordController) {return CustomTextFormField(controller: newpasswordController, hintText: "lbl_new_password".tr, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true);}), SizedBox(height: 42.v), BlocSelector<CreateNewPasswordTwo1Bloc, CreateNewPasswordTwo1State, TextEditingController?>(selector: (state) => state.confirmpasswordController, builder: (context, confirmpasswordController) {return CustomTextFormField(controller: confirmpasswordController, hintText: "msg_confirm_password2".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true);}), Spacer(flex: 33), CustomElevatedButton(height: 46.v, width: 150.h, text: "lbl_confirm".tr, buttonStyle: CustomButtonStyles.fillGrayTL23, onPressed: () {onTapConfirm(context);}), Spacer(flex: 66)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftWhiteA700, margin: EdgeInsets.fromLTRB(35.h, 10.v, 304.h, 10.v))); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [PasswordChangedOneBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapConfirm(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>PasswordChangedOneBottomsheet.builder(context),isScrollControlled: true); } 
 }
