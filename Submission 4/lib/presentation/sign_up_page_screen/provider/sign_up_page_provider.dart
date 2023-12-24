import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/sign_up_page_screen/models/sign_up_page_model.dart';

/// A provider class for the SignUpPageScreen.
///
/// This provider manages the state of the SignUpPageScreen, including the
/// current signUpPageModelObj
class SignUpPageProvider extends ChangeNotifier {
  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  SignUpPageModel signUpPageModelObj = SignUpPageModel();

  @override
  void dispose() {
    super.dispose();
    mobileNumberController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
