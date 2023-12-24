import 'models/home_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/home_one_page/home_one_page.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_trailing_image.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/custom_app_bar.dart';
import 'provider/home_one_tab_container_provider.dart';

class HomeOneTabContainerScreen extends StatefulWidget {
  const HomeOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeOneTabContainerScreenState createState() =>
      HomeOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeOneTabContainerProvider(),
      child: HomeOneTabContainerScreen(),
    );
  }
}

class HomeOneTabContainerScreenState extends State<HomeOneTabContainerScreen>
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
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 601.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomeOnePage(),
                      HomeOnePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 27.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_you_are_a".tr,
                style: CustomTextStyles.headlineSmallRegular,
              ),
              TextSpan(
                text: "lbl_donor".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage4,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 13.v,
            right: 2.h,
          ),
        ),
        Container(
          height: 50.adaptSize,
          width: 50.adaptSize,
          margin: EdgeInsets.fromLTRB(47.h, 2.v, 14.h, 1.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage9,
                height: 50.adaptSize,
                width: 50.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  margin: EdgeInsets.fromLTRB(32.h, 5.v, 7.h, 34.v),
                  decoration: BoxDecoration(
                    color: appTheme.redA700,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 29.v,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_my_post".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_1".tr,
                  ),
                ),
              ],
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
}
