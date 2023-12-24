import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/reset_password_screen/models/reset_password_model.dart';

/// A provider class for the ResetPasswordScreen.
///
/// This provider manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  ResetPasswordModel resetPasswordModelObj = ResetPasswordModel();

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }
}
