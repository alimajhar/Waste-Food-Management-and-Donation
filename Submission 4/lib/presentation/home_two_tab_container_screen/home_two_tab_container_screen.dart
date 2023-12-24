import 'models/home_two_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_two_page/home_two_page.dart';
import 'package:waste_food_management_and_donation/presentation/request_tab_container_page/request_tab_container_page.dart';
import 'package:waste_food_management_and_donation/widgets/custom_bottom_bar.dart';
import 'package:waste_food_management_and_donation/widgets/custom_drop_down.dart';
import 'provider/home_two_tab_container_provider.dart';

class HomeTwoTabContainerScreen extends StatefulWidget {
  const HomeTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTwoTabContainerScreenState createState() =>
      HomeTwoTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeTwoTabContainerProvider(),
      child: HomeTwoTabContainerScreen(),
    );
  }
}

class HomeTwoTabContainerScreenState extends State<HomeTwoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 60.v),
              _buildTabViewRow(context),
              SizedBox(height: 26.v),
              _buildTabview(context),
              SizedBox(
                height: 382.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HomeTwoPage(),
                    HomeTwoPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabViewRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 11.v),
            child: Selector<HomeTwoTabContainerProvider,
                HomeTwoTabContainerModel?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.homeTwoTabContainerModelObj,
              builder: (context, homeTwoTabContainerModelObj, child) {
                return CustomDropDown(
                  width: 224.h,
                  icon: Container(
                    margin: EdgeInsets.only(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                    ),
                  ),
                  hintText: "lbl_you_are_a_donor".tr,
                  items: homeTwoTabContainerModelObj?.dropdownItemList ?? [],
                  onChanged: (value) {
                    context
                        .read<HomeTwoTabContainerProvider>()
                        .onSelected(value);
                  },
                );
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 28.v,
      width: 319.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray60001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.black900,
        tabs: [
          Tab(
            child: Text(
              "lbl_my_post".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_receivers_requests".tr,
            ),
          ),
        ],
      ),
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
