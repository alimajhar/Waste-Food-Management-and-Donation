import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_pin_code_text_field.dart';
import 'provider/otp_provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OtpScreenState createState() => OtpScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpProvider(),
      child: OtpScreen(),
    );
  }
}

class OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 50.h,
            vertical: 80.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_enter_otp".tr,
                style: theme.textTheme.headlineLarge,
              ),
              Spacer(
                flex: 47,
              ),
              Container(
                width: 215.h,
                margin: EdgeInsets.only(
                  left: 22.h,
                  right: 23.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_your_otp_sent_to2".tr,
                        style: CustomTextStyles.titleMediumInterBlack900,
                      ),
                      TextSpan(
                        text: "msg_880_1234_this".tr,
                        style: CustomTextStyles.titleMediumInterBlack900_1
                            .copyWith(
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 84.v),
              Padding(
                padding: EdgeInsets.only(right: 11.h),
                child: Selector<OtpProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 41.v),
              Text(
                "msg_resend_code_in_10sec".tr,
                style: CustomTextStyles.bodyMedium15,
              ),
              SizedBox(height: 91.v),
              Text(
                "msg_didn_t_receieve".tr,
                style: CustomTextStyles.bodyMediumPrimary,
              ),
              Spacer(
                flex: 52,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
