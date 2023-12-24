import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/request_tab_container_page/models/request_tab_container_model.dart';

/// A provider class for the RequestTabContainerPage.
///
/// This provider manages the state of the RequestTabContainerPage, including the
/// current requestTabContainerModelObj
class RequestTabContainerProvider extends ChangeNotifier {
  RequestTabContainerModel requestTabContainerModelObj =
      RequestTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in requestTabContainerModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
