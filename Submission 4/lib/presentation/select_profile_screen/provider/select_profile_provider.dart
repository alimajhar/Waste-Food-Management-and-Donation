import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/select_profile_screen/models/select_profile_model.dart';
import '../models/six1_item_model.dart';

/// A provider class for the SelectProfileScreen.
///
/// This provider manages the state of the SelectProfileScreen, including the
/// current selectProfileModelObj

// ignore_for_file: must_be_immutable
class SelectProfileProvider extends ChangeNotifier {
  SelectProfileModel selectProfileModelObj = SelectProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
