import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_one_tab_container_screen/models/home_one_tab_container_model.dart';

/// A provider class for the HomeOneTabContainerScreen.
///
/// This provider manages the state of the HomeOneTabContainerScreen, including the
/// current homeOneTabContainerModelObj
class HomeOneTabContainerProvider extends ChangeNotifier {
  HomeOneTabContainerModel homeOneTabContainerModelObj =
      HomeOneTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
