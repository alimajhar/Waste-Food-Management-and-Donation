import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/request_container_screen/models/request_container_model.dart';

/// A provider class for the RequestContainerScreen.
///
/// This provider manages the state of the RequestContainerScreen, including the
/// current requestContainerModelObj

// ignore_for_file: must_be_immutable
class RequestContainerProvider extends ChangeNotifier {
  RequestContainerModel requestContainerModelObj = RequestContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
