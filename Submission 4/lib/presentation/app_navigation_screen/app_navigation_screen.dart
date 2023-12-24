import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Individual Details One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.individualDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirmation One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In  One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP  One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirmation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select Profile One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Individual Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.individualDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Request - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.requestContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Pickup ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPickupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create donation listing ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createDonationListingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirmation Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Two - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Receiver Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.receiverDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeTabContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
