import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/individual_details_one_screen/models/individual_details_one_model.dart';

/// A provider class for the IndividualDetailsOneScreen.
///
/// This provider manages the state of the IndividualDetailsOneScreen, including the
/// current individualDetailsOneModelObj
class IndividualDetailsOneProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  IndividualDetailsOneModel individualDetailsOneModelObj =
      IndividualDetailsOneModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
  }
}
