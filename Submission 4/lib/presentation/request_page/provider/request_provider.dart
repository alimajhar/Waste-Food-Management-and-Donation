import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/request_page/models/request_model.dart';

/// A provider class for the RequestPage.
///
/// This provider manages the state of the RequestPage, including the
/// current requestModelObj
class RequestProvider extends ChangeNotifier {
  TextEditingController donationHistoryController = TextEditingController();

  TextEditingController durationController = TextEditingController();

  TextEditingController ricebowlwithcurryvalueController =
      TextEditingController();

  RequestModel requestModelObj = RequestModel();

  @override
  void dispose() {
    super.dispose();
    donationHistoryController.dispose();
    durationController.dispose();
    ricebowlwithcurryvalueController.dispose();
  }
}
