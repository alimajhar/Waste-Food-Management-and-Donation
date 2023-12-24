import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'provider/home_provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    right: 23.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCreateFoodRequestSection(context),
                      SizedBox(height: 555.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 15.v,
                        width: 25.h,
                        margin: EdgeInsets.only(left: 62.h),
                      ),
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
  Widget _buildCreateFoodRequestSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray10001,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "msg_nothing_till_now".tr,
            style: CustomTextStyles.bodyMediumGray40002,
          ),
          SizedBox(height: 7.v),
          Divider(
            color: appTheme.blueGray100,
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_do_you_required".tr,
            style: CustomTextStyles.bodySmall12,
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 46.v,
            text: "msg_create_food_request".tr,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 10.h,
            ),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTwemojiheavyplussign,
                height: 15.v,
                width: 16.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL5,
            buttonTextStyle: CustomTextStyles.bodyLargeRobotoOnErrorContainer,
          ),
        ],
      ),
    );
  }
}
