import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/confirmation_two_screen/models/confirmation_two_model.dart';

/// A provider class for the ConfirmationTwoScreen.
///
/// This provider manages the state of the ConfirmationTwoScreen, including the
/// current confirmationTwoModelObj
class ConfirmationTwoProvider extends ChangeNotifier {
  ConfirmationTwoModel confirmationTwoModelObj = ConfirmationTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
