import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_two_tab_container_screen/models/home_two_tab_container_model.dart';

/// A provider class for the HomeTwoTabContainerScreen.
///
/// This provider manages the state of the HomeTwoTabContainerScreen, including the
/// current homeTwoTabContainerModelObj
class HomeTwoTabContainerProvider extends ChangeNotifier {
  HomeTwoTabContainerModel homeTwoTabContainerModelObj =
      HomeTwoTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeTwoTabContainerModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
