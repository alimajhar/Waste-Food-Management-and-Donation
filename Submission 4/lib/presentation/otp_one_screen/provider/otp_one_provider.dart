import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/otp_one_screen/models/otp_one_model.dart';

/// A provider class for the OtpOneScreen.
///
/// This provider manages the state of the OtpOneScreen, including the
/// current otpOneModelObj
class OtpOneProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpOneModel otpOneModelObj = OtpOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
