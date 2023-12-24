import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_two_page/models/home_two_model.dart';

/// A provider class for the HomeTwoPage.
///
/// This provider manages the state of the HomeTwoPage, including the
/// current homeTwoModelObj
class HomeTwoProvider extends ChangeNotifier {
  TextEditingController donationHistoryController = TextEditingController();

  TextEditingController durationController = TextEditingController();

  TextEditingController foodItemController = TextEditingController();

  HomeTwoModel homeTwoModelObj = HomeTwoModel();

  @override
  void dispose() {
    super.dispose();
    donationHistoryController.dispose();
    durationController.dispose();
    foodItemController.dispose();
  }
}
