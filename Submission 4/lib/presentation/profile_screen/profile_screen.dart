import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/request_tab_container_page/request_tab_container_page.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_subtitle.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_title_image.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/custom_app_bar.dart';
import 'package:waste_food_management_and_donation/widgets/custom_bottom_bar.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenState createState() => ProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfileScreen(),
    );
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_personal_info".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_your_donations".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_settings".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "msg_help_and_support".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(height: 59.v),
              Divider(
                indent: 3.h,
              ),
              SizedBox(height: 85.v),
              Padding(
                padding: EdgeInsets.only(left: 112.h),
                child: Text(
                  "lbl_sign_out".tr,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 11.v,
                width: 25.h,
                margin: EdgeInsets.only(left: 65.h),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 117.h,
            ),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgArrow2,
                  margin: EdgeInsets.only(
                    top: 16.v,
                    bottom: 11.v,
                  ),
                ),
                AppbarSubtitle(
                  text: "lbl_my_profile".tr,
                  margin: EdgeInsets.only(left: 84.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 327.h,
              child: Divider(),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.requestTabContainerPage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.requestTabContainerPage:
        return RequestTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
