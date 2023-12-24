import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_tab_container_screen/models/home_tab_container_model.dart';

/// A provider class for the HomeTabContainerScreen.
///
/// This provider manages the state of the HomeTabContainerScreen, including the
/// current homeTabContainerModelObj
class HomeTabContainerProvider extends ChangeNotifier {
  HomeTabContainerModel homeTabContainerModelObj = HomeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
