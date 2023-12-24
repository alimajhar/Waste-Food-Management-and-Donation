import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/select_profile_one_screen/models/select_profile_one_model.dart';
import '../models/six_item_model.dart';

/// A provider class for the SelectProfileOneScreen.
///
/// This provider manages the state of the SelectProfileOneScreen, including the
/// current selectProfileOneModelObj

// ignore_for_file: must_be_immutable
class SelectProfileOneProvider extends ChangeNotifier {
  SelectProfileOneModel selectProfileOneModelObj = SelectProfileOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
