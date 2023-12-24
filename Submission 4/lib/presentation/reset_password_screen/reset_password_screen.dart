import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResetPasswordProvider(),
      child: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
            padding: EdgeInsets.only(
              left: 26.h,
              top: 85.v,
              right: 26.h,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_reset_password".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                SizedBox(height: 50.v),
                Selector<ResetPasswordProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.newpasswordController,
                  builder: (context, newpasswordController, child) {
                    return CustomTextFormField(
                      controller: newpasswordController,
                      hintText: "msg_enter_new_password".tr,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    );
                  },
                ),
                SizedBox(height: 11.v),
                Selector<ResetPasswordProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.confirmpasswordController,
                  builder: (context, confirmpasswordController, child) {
                    return CustomTextFormField(
                      controller: confirmpasswordController,
                      hintText: "msg_confirm_password2".tr,
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
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    );
                  },
                ),
                SizedBox(height: 70.v),
                CustomElevatedButton(
                  text: "lbl_confirm".tr,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
