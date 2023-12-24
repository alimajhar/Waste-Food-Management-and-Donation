import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/log_in_one_screen/models/log_in_one_model.dart';

/// A provider class for the LogInOneScreen.
///
/// This provider manages the state of the LogInOneScreen, including the
/// current logInOneModelObj
class LogInOneProvider extends ChangeNotifier {
  TextEditingController mobileNumberController = TextEditingController();

  LogInOneModel logInOneModelObj = LogInOneModel();

  @override
  void dispose() {
    super.dispose();
    mobileNumberController.dispose();
  }
}
