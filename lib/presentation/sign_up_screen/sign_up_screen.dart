import 'package:cloud_firestore/cloud_firestore.dart';

import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
    key: key,
  );

  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel.empty(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            padding: EdgeInsets.symmetric(
              horizontal: isPortrait ? 32.h : 64.h,
              vertical: isPortrait ? 16.v : 32.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigate back to the previous screen
                    },
                    icon: Icon(Icons.arrow_back), // Add a back button icon
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 163.h,
                    child: Text(
                      "msg_create_your_account".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 2.00,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: isPortrait ? 16.v : 32.v),
                _buildNameField(context, "lbl_enter_your_name".tr),
                SizedBox(height: 16.v),
                _buildEmailField(context, "lbl_email_address".tr),
                SizedBox(height: 16.v),
                _buildPasswordField(context, "lbl_password".tr),
                SizedBox(height: 16.v),
                _buildConfirmPasswordField(
                  context,
                  "msg_confirm_password".tr,
                ),
                SizedBox(height: 24.v), // Added more spacing here
                _buildSignupButton(context),
                SizedBox(height: 16.v),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "lbl_or_sign_up_with".tr,
                    style: CustomTextStyles.bodySmallProductSansLightBlack900_3,
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  height: 4.v,
                  width: isPortrait ? 99.h : 198.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
                SizedBox(height: 16.v), // Added more spacing here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgButtonSocmedApple,
                      ),
                    ),
                    SizedBox(width: 16.h),
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGrommetIconsGoogle,
                      ),
                    ),
                    SizedBox(width: 16.h),
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGrommetIconsFacebookOption,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: isPortrait ? 16.v : 32.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_already_have_account".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "lbl_log_in".tr,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: isPortrait ? 8.v : 16.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      floatingLabelBehavior: FloatingLabelBehavior.auto, // Move label when typing
    );
  }

  Widget _buildNameField(BuildContext context, String labelText) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.nameFieldController,
      builder: (context, nameFieldController) {
        return TextFormField(
          controller: nameFieldController,
          decoration: _buildInputDecoration(labelText),
          style: TextStyle(
            color: Colors.black, // Set the text color here
          ),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildEmailField(BuildContext context, String labelText) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.emailFieldController,
      builder: (context, emailFieldController) {
        return TextFormField(
          controller: emailFieldController,
          decoration: _buildInputDecoration(labelText),
          style: TextStyle(
            color: Colors.black, // Set the text color here
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildPasswordField(BuildContext context, String labelText) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.passwordFieldController,
      builder: (context, passwordFieldController) {
        return TextFormField(
          controller: passwordFieldController,
          decoration: _buildInputDecoration(labelText),
          style: TextStyle(
            color: Colors.black, // Set the text color here
          ),
          keyboardType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  Widget _buildConfirmPasswordField(BuildContext context, String labelText) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.confirmPasswordFieldController,
      builder: (context, confirmPasswordFieldController) {
        return TextFormField(
          controller: confirmPasswordFieldController,
          decoration: _buildInputDecoration(labelText),
          style: TextStyle(
            color: Colors.black, // Set the text color here
          ),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      height: 51.v,
      width: 147.h,
      text: "lbl_sign_up".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillGray,
      onPressed: () {
        // Validate the form first
        // if (_formKey.currentState.validate()) {
          // Create a new user object with the form data
          SignUpModel signUpData = SignUpModel(
            name: _nameController.text,
            email: _emailController.text,
            // You may want to add other fields here as needed
          );

          NavigatorService.pushNamed(AppRoutes.homepageOneScreen);

          // Save the user data to Firestore
          // usersCollection
          //     .add(signUpData.toMap())
          //     .then((value) {
          //   // User data saved successfully
          //   // You can navigate to the next screen or perform any other actions here
          //   NavigatorService.pushNamed(AppRoutes.homepageOneScreen);
          // })
          //     .catchError((error) {
          //   // Error occurred while saving data
          //   // Handle the error (e.g., show an error message)
          // });
        // }
      },
    );
  }
}
