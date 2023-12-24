import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_checkbox_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_icon_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/log_in_provider.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LogInScreenState createState() => LogInScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogInProvider(),
      child: LogInScreen(),
    );
  }
}

class LogInScreenState extends State<LogInScreen> {
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
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_login".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 43.v),
                Selector<LogInProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.mobileNumberController,
                  builder: (context, mobileNumberController, child) {
                    return CustomTextFormField(
                      controller: mobileNumberController,
                      hintText: "msg_enter_your_mobile".tr,
                      textInputType: TextInputType.phone,
                      validator: (value) {
                        if (!isValidPhone(value)) {
                          return "err_msg_please_enter_valid_phone_number".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 13.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    );
                  },
                ),
                SizedBox(height: 21.v),
                Selector<LogInProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.passwordController,
                  builder: (context, passwordController, child) {
                    return CustomTextFormField(
                      controller: passwordController,
                      hintText: "msg_enter_your_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 13.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    );
                  },
                ),
                SizedBox(height: 20.v),
                _buildLoginRow(context),
                SizedBox(height: 46.v),
                CustomElevatedButton(
                  height: 50.v,
                  text: "lbl_login".tr,
                ),
                SizedBox(height: 49.v),
                _buildLineOneRow(context),
                SizedBox(height: 25.v),
                Text(
                  "lbl_login_with".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 31.v),
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
                SizedBox(height: 39.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_dont_have_an_account2".tr,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                      TextSpan(
                        text: "lbl_sign_up2".tr,
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Selector<LogInProvider, bool?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.rememberMe,
              builder: (context, rememberMe, child) {
                return CustomCheckboxButton(
                  text: "lbl_remember_me".tr,
                  value: rememberMe,
                  onChange: (value) {
                    context.read<LogInProvider>().changeCheckBox1(value);
                  },
                );
              },
            ),
          ),
          Text(
            "msg_forgot_password".tr,
            style: CustomTextStyles.bodyMediumPrimary_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineOneRow(BuildContext context) {
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
