import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/receiver_dialog/models/receiver_model.dart';

/// A provider class for the ReceiverDialog.
///
/// This provider manages the state of the ReceiverDialog, including the
/// current receiverModelObj

// ignore_for_file: must_be_immutable
class ReceiverProvider extends ChangeNotifier {
  ReceiverModel receiverModelObj = ReceiverModel();

  @override
  void dispose() {
    super.dispose();
  }
}
