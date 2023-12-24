import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/confirmation_one_screen/models/confirmation_one_model.dart';

/// A provider class for the ConfirmationOneScreen.
///
/// This provider manages the state of the ConfirmationOneScreen, including the
/// current confirmationOneModelObj
class ConfirmationOneProvider extends ChangeNotifier {
  ConfirmationOneModel confirmationOneModelObj = ConfirmationOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
