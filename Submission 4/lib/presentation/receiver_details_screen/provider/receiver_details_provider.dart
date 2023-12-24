import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/receiver_details_screen/models/receiver_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the ReceiverDetailsScreen.
///
/// This provider manages the state of the ReceiverDetailsScreen, including the
/// current receiverDetailsModelObj
class ReceiverDetailsProvider extends ChangeNotifier {
  TextEditingController receiverDetailsNameController = TextEditingController();

  TextEditingController receiverDetailsNameController1 =
      TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController receiverDetailsEmailController =
      TextEditingController();

  TextEditingController receiverDetailsAddressController =
      TextEditingController();

  TextEditingController receiverDetailsPincodeController =
      TextEditingController();

  TextEditingController receiverDetailsCityController = TextEditingController();

  ReceiverDetailsModel receiverDetailsModelObj = ReceiverDetailsModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    receiverDetailsNameController.dispose();
    receiverDetailsNameController1.dispose();
    phoneNumberController.dispose();
    receiverDetailsEmailController.dispose();
    receiverDetailsAddressController.dispose();
    receiverDetailsPincodeController.dispose();
    receiverDetailsCityController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
