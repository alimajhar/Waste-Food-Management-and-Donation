import 'models/individual_details_one_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/individual_details_one_provider.dart';

class IndividualDetailsOneScreen extends StatefulWidget {
  const IndividualDetailsOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  IndividualDetailsOneScreenState createState() =>
      IndividualDetailsOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IndividualDetailsOneProvider(),
      child: IndividualDetailsOneScreen(),
    );
  }
}

class IndividualDetailsOneScreenState
    extends State<IndividualDetailsOneScreen> {
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
              horizontal: 26.h,
              vertical: 75.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 214.h,
                    child: Text(
                      "msg_register_your_details".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineLargeBlack900.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Selector<IndividualDetailsOneProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.nameController,
                  builder: (context, nameController, child) {
                    return CustomTextFormField(
                      controller: nameController,
                      hintText: "lbl_name".tr,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    );
                  },
                ),
                SizedBox(height: 16.v),
                Selector<IndividualDetailsOneProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.emailController,
                  builder: (context, emailController, child) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "lbl_email_id".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                Spacer(
                  flex: 37,
                ),
                CustomElevatedButton(
                  text: "lbl_get_otp".tr,
                ),
                Spacer(
                  flex: 62,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
