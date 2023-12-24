import 'models/home_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_page/home_page.dart';
import 'provider/home_tab_container_provider.dart';

class HomeTabContainerScreen extends StatefulWidget {
  const HomeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerScreenState createState() => HomeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeTabContainerProvider(),
      child: HomeTabContainerScreen(),
    );
  }
}

class HomeTabContainerScreenState extends State<HomeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

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
            children: [
              SizedBox(height: 60.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHomeRow(context),
                      SizedBox(height: 26.v),
                      _buildTabview(context),
                      SizedBox(
                        height: 659.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            HomePage(),
                            HomePage(),
                          ],
                        ),
                      ),
                    ],
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
  Widget _buildHomeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.v,
            width: 251.h,
            margin: EdgeInsets.only(top: 21.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage4,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_you_are_a".tr,
                          style: CustomTextStyles.headlineSmallRegular,
                        ),
                        TextSpan(
                          text: "lbl_receiver".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_donner_s_posts".tr,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_2".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
