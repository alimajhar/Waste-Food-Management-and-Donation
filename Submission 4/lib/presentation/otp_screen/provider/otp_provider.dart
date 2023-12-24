import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/otp_screen/models/otp_model.dart';

/// A provider class for the OtpScreen.
///
/// This provider manages the state of the OtpScreen, including the
/// current otpModelObj
class OtpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpModel otpModelObj = OtpModel();

  @override
  void dispose() {
    super.dispose();
  }
}
