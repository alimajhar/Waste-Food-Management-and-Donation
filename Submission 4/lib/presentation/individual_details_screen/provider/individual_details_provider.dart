import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/individual_details_screen/models/individual_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the IndividualDetailsScreen.
///
/// This provider manages the state of the IndividualDetailsScreen, including the
/// current individualDetailsModelObj
class IndividualDetailsProvider extends ChangeNotifier {
  TextEditingController donorDetailsController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  IndividualDetailsModel individualDetailsModelObj = IndividualDetailsModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    donorDetailsController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    addressController.dispose();
    pincodeController.dispose();
    cityController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
