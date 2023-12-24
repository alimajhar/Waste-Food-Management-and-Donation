import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/log_in_screen/models/log_in_model.dart';

/// A provider class for the LogInScreen.
///
/// This provider manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInProvider extends ChangeNotifier {
  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LogInModel logInModelObj = LogInModel();

  bool rememberMe = false;

  @override
  void dispose() {
    super.dispose();
    mobileNumberController.dispose();
    passwordController.dispose();
  }

  void changeCheckBox1(bool value) {
    rememberMe = value;
    notifyListeners();
  }
}
