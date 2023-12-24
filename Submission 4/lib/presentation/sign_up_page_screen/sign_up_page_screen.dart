import 'models/sign_up_page_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_icon_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/sign_up_page_provider.dart';

class SignUpPageScreen extends StatefulWidget {
  const SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpPageScreenState createState() => SignUpPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpPageProvider(),
      child: SignUpPageScreen(),
    );
  }
}

class SignUpPageScreenState extends State<SignUpPageScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 43.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 37.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_sign_up".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 40.v),
                _buildMobileNumber(context),
                SizedBox(height: 16.v),
                _buildPassword(context),
                SizedBox(height: 16.v),
                _buildConfirmpassword(context),
                SizedBox(height: 74.v),
                _buildNext(context),
                SizedBox(height: 41.v),
                _buildLineOne(context),
                SizedBox(height: 25.v),
                Text(
                  "lbl_sign_up_with".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 19.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(1.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup13,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(1.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 74.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: CustomTextStyles.titleMediumInterBlack900_1,
                      ),
                      TextSpan(
                        text: "lbl_login".tr,
                        style: CustomTextStyles.titleMediumInterPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Selector<SignUpPageProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.mobileNumberController,
      builder: (context, mobileNumberController, child) {
        return CustomTextFormField(
          controller: mobileNumberController,
          hintText: "lbl_mobile_number".tr,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Selector<SignUpPageProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.passwordController,
      builder: (context, passwordController, child) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Selector<SignUpPageProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.confirmpasswordController,
      builder: (context, confirmpasswordController, child) {
        return CustomTextFormField(
          controller: confirmpasswordController,
          hintText: "msg_confirm_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
    );
  }

  /// Section Widget
  Widget _buildLineOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 5.v,
          ),
          child: SizedBox(
            width: 115.h,
            child: Divider(
              color: appTheme.gray40003,
            ),
          ),
        ),
        Text(
          "lbl_or".tr,
          style: theme.textTheme.bodyMedium,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 5.v,
          ),
          child: SizedBox(
            width: 115.h,
            child: Divider(
              color: appTheme.gray40003,
            ),
          ),
        ),
      ],
    );
  }
}
