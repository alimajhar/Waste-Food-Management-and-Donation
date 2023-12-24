import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/add_pickup_screen/models/add_pickup_model.dart';

/// A provider class for the AddPickupScreen.
///
/// This provider manages the state of the AddPickupScreen, including the
/// current addPickupModelObj
class AddPickupProvider extends ChangeNotifier {
  AddPickupModel addPickupModelObj = AddPickupModel();

  @override
  void dispose() {
    super.dispose();
  }
}
