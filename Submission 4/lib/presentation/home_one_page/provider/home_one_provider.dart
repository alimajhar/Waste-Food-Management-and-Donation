import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_one_page/models/home_one_model.dart';

/// A provider class for the HomeOnePage.
///
/// This provider manages the state of the HomeOnePage, including the
/// current homeOneModelObj
class HomeOneProvider extends ChangeNotifier {
  TextEditingController donatonHistoryController = TextEditingController();

  TextEditingController durationController = TextEditingController();

  TextEditingController foodTitleController = TextEditingController();

  HomeOneModel homeOneModelObj = HomeOneModel();

  @override
  void dispose() {
    super.dispose();
    donatonHistoryController.dispose();
    durationController.dispose();
    foodTitleController.dispose();
  }
}
