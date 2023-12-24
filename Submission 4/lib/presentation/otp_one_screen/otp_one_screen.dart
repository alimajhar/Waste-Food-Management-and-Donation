import 'models/otp_one_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_pin_code_text_field.dart';
import 'provider/otp_one_provider.dart';

class OtpOneScreen extends StatefulWidget {
  const OtpOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OtpOneScreenState createState() => OtpOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpOneProvider(),
      child: OtpOneScreen(),
    );
  }
}

class OtpOneScreenState extends State<OtpOneScreen> {
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
          padding: EdgeInsets.only(
            left: 50.h,
            top: 86.v,
            right: 50.h,
          ),
          child: Column(
            children: [
              Text(
                "lbl_enter_otp".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 99.v),
              Container(
                width: 240.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  right: 11.h,
                ),
                child: Text(
                  "msg_your_otp_sent_to3".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      CustomTextStyles.titleMediumInterBlack900Medium.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 85.v),
              Padding(
                padding: EdgeInsets.only(right: 11.h),
                child: Selector<OtpOneProvider, TextEditingController?>(
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
              SizedBox(height: 90.v),
              Text(
                "msg_didn_t_receieve".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
