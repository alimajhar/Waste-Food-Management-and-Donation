import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/create_donation_listing_screen/models/create_donation_listing_model.dart';

/// A provider class for the CreateDonationListingScreen.
///
/// This provider manages the state of the CreateDonationListingScreen, including the
/// current createDonationListingModelObj
class CreateDonationListingProvider extends ChangeNotifier {
  TextEditingController addTitlevalueController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController foodQuantityController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  CreateDonationListingModel createDonationListingModelObj =
      CreateDonationListingModel();

  @override
  void dispose() {
    super.dispose();
    addTitlevalueController.dispose();
    descriptionController.dispose();
    foodQuantityController.dispose();
    editTextController.dispose();
    timeController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in createDonationListingModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
