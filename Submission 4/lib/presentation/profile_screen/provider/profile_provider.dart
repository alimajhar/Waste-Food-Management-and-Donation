import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/profile_screen/models/profile_model.dart';

/// A provider class for the ProfileScreen.
///
/// This provider manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileProvider extends ChangeNotifier {
  ProfileModel profileModelObj = ProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
