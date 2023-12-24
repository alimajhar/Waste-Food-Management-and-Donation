import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:waste_food_management_and_donation/presentation/individual_details_one_screen/individual_details_one_screen.dart';
import 'package:waste_food_management_and_donation/presentation/otp_screen/otp_screen.dart';
import 'package:waste_food_management_and_donation/presentation/confirmation_one_screen/confirmation_one_screen.dart';
import 'package:waste_food_management_and_donation/presentation/log_in_screen/log_in_screen.dart';
import 'package:waste_food_management_and_donation/presentation/log_in_one_screen/log_in_one_screen.dart';
import 'package:waste_food_management_and_donation/presentation/otp_one_screen/otp_one_screen.dart';
import 'package:waste_food_management_and_donation/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:waste_food_management_and_donation/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:waste_food_management_and_donation/presentation/select_profile_one_screen/select_profile_one_screen.dart';
import 'package:waste_food_management_and_donation/presentation/individual_details_screen/individual_details_screen.dart';
import 'package:waste_food_management_and_donation/presentation/request_container_screen/request_container_screen.dart';
import 'package:waste_food_management_and_donation/presentation/add_pickup_screen/add_pickup_screen.dart';
import 'package:waste_food_management_and_donation/presentation/home_one_tab_container_screen/home_one_tab_container_screen.dart';
import 'package:waste_food_management_and_donation/presentation/create_donation_listing_screen/create_donation_listing_screen.dart';
import 'package:waste_food_management_and_donation/presentation/confirmation_two_screen/confirmation_two_screen.dart';
import 'package:waste_food_management_and_donation/presentation/home_two_tab_container_screen/home_two_tab_container_screen.dart';
import 'package:waste_food_management_and_donation/presentation/profile_screen/profile_screen.dart';
import 'package:waste_food_management_and_donation/presentation/notifications_screen/notifications_screen.dart';
import 'package:waste_food_management_and_donation/presentation/select_profile_screen/select_profile_screen.dart';
import 'package:waste_food_management_and_donation/presentation/receiver_details_screen/receiver_details_screen.dart';
import 'package:waste_food_management_and_donation/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:waste_food_management_and_donation/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String individualDetailsOneScreen =
      '/individual_details_one_screen';

  static const String otpScreen = '/otp_screen';

  static const String confirmationOneScreen = '/confirmation_one_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInOneScreen = '/log_in_one_screen';

  static const String otpOneScreen = '/otp_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String selectProfileOneScreen = '/select_profile_one_screen';

  static const String individualDetailsScreen = '/individual_details_screen';

  static const String requestPage = '/request_page';

  static const String requestTabContainerPage = '/request_tab_container_page';

  static const String requestContainerScreen = '/request_container_screen';

  static const String addPickupScreen = '/add_pickup_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneTabContainerScreen =
      '/home_one_tab_container_screen';

  static const String createDonationListingScreen =
      '/create_donation_listing_screen';

  static const String confirmationTwoScreen = '/confirmation_two_screen';

  static const String homeTwoPage = '/home_two_page';

  static const String homeTwoTabContainerScreen =
      '/home_two_tab_container_screen';

  static const String profileScreen = '/profile_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String selectProfileScreen = '/select_profile_screen';

  static const String receiverDetailsScreen = '/receiver_details_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerScreen = '/home_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUpPageScreen: SignUpPageScreen.builder,
        individualDetailsOneScreen: IndividualDetailsOneScreen.builder,
        otpScreen: OtpScreen.builder,
        confirmationOneScreen: ConfirmationOneScreen.builder,
        logInScreen: LogInScreen.builder,
        logInOneScreen: LogInOneScreen.builder,
        otpOneScreen: OtpOneScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        confirmationScreen: ConfirmationScreen.builder,
        selectProfileOneScreen: SelectProfileOneScreen.builder,
        individualDetailsScreen: IndividualDetailsScreen.builder,
        requestContainerScreen: RequestContainerScreen.builder,
        addPickupScreen: AddPickupScreen.builder,
        homeOneTabContainerScreen: HomeOneTabContainerScreen.builder,
        createDonationListingScreen: CreateDonationListingScreen.builder,
        confirmationTwoScreen: ConfirmationTwoScreen.builder,
        homeTwoTabContainerScreen: HomeTwoTabContainerScreen.builder,
        profileScreen: ProfileScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        selectProfileScreen: SelectProfileScreen.builder,
        receiverDetailsScreen: ReceiverDetailsScreen.builder,
        homeTabContainerScreen: HomeTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignUpPageScreen.builder
      };
}
