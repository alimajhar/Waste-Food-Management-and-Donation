import 'models/confirmation_one_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'provider/confirmation_one_provider.dart';

class ConfirmationOneScreen extends StatefulWidget {
  const ConfirmationOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConfirmationOneScreenState createState() => ConfirmationOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConfirmationOneProvider(),
      child: ConfirmationOneScreen(),
    );
  }
}

class ConfirmationOneScreenState extends State<ConfirmationOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 19.h,
            top: 220.v,
            right: 19.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 121.adaptSize,
                width: 121.adaptSize,
                margin: EdgeInsets.only(left: 92.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 32.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder60,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 56.v,
                  width: 82.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 58.h),
                child: Text(
                  "lbl_otp_successful".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 305.h,
                margin: EdgeInsets.only(right: 17.h),
                child: Text(
                  "msg_your_phone_number".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBlack900.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
