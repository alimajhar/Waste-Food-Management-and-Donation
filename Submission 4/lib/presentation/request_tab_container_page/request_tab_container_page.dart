import 'models/request_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/presentation/request_page/request_page.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_trailing_image.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/custom_app_bar.dart';
import 'provider/request_tab_container_provider.dart';

// ignore_for_file: must_be_immutable
class RequestTabContainerPage extends StatefulWidget {
  const RequestTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  RequestTabContainerPageState createState() => RequestTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RequestTabContainerProvider(),
      child: RequestTabContainerPage(),
    );
  }
}

class RequestTabContainerPageState extends State<RequestTabContainerPage>
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
            padding: EdgeInsets.only(top: 19.v),
            child: Column(
              children: [
                _buildRequest(context),
                SizedBox(
                  height: 528.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      RequestPage(),
                      RequestPage(),
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
      title: Selector<RequestTabContainerProvider, RequestTabContainerModel?>(
        selector: (
          context,
          provider,
        ) =>
            provider.requestTabContainerModelObj,
        builder: (context, requestTabContainerModelObj, child) {
          return AppbarTitleDropdown(
            margin: EdgeInsets.only(left: 27.h),
            hintText: "lbl_you_are_a_donor".tr,
            items: requestTabContainerModelObj?.dropdownItemList ?? [],
            onTap: (value) {
              context.read<RequestTabContainerProvider>().onSelected(value);
            },
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage9,
          margin: EdgeInsets.fromLTRB(12.h, 2.v, 12.h, 3.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRequest(BuildContext context) {
    return SizedBox(
      height: 29.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 29.v,
            width: 250.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.secondaryContainer,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "msg_receivers_requests".tr,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "lbl_2".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: SizedBox(
                width: 319.h,
                child: Divider(
                  color: appTheme.gray30001,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
