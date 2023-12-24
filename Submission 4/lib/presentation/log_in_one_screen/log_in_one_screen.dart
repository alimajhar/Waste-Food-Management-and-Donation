import 'models/log_in_one_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/log_in_one_provider.dart';

class LogInOneScreen extends StatefulWidget {
  const LogInOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LogInOneScreenState createState() => LogInOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogInOneProvider(),
      child: LogInOneScreen(),
    );
  }
}

class LogInOneScreenState extends State<LogInOneScreen> {
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
              horizontal: 16.h,
              vertical: 90.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "msg_forgot_password2".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Spacer(
                  flex: 23,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Selector<LogInOneProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.mobileNumberController,
                    builder: (context, mobileNumberController, child) {
                      return CustomTextFormField(
                        controller: mobileNumberController,
                        hintText: "msg_enter_your_mobile2".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
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
                ),
                Spacer(
                  flex: 26,
                ),
                CustomElevatedButton(
                  text: "lbl_send_otp".tr,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    right: 10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Spacer(
                  flex: 49,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
