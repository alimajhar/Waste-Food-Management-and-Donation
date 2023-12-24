import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/notifications_screen/models/notifications_model.dart';

/// A provider class for the NotificationsScreen.
///
/// This provider manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsProvider extends ChangeNotifier {
  NotificationsModel notificationsModelObj = NotificationsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
