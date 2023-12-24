import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/confirmation_screen/models/confirmation_model.dart';

/// A provider class for the ConfirmationScreen.
///
/// This provider manages the state of the ConfirmationScreen, including the
/// current confirmationModelObj
class ConfirmationProvider extends ChangeNotifier {
  ConfirmationModel confirmationModelObj = ConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
