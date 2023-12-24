import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/details_complete_dialog/models/details_complete_model.dart';

/// A provider class for the DetailsCompleteDialog.
///
/// This provider manages the state of the DetailsCompleteDialog, including the
/// current detailsCompleteModelObj

// ignore_for_file: must_be_immutable
class DetailsCompleteProvider extends ChangeNotifier {
  DetailsCompleteModel detailsCompleteModelObj = DetailsCompleteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
