import 'models/confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'provider/confirmation_provider.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConfirmationScreenState createState() => ConfirmationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConfirmationProvider(),
      child: ConfirmationScreen(),
    );
  }
}

class ConfirmationScreenState extends State<ConfirmationScreen> {
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
            left: 26.h,
            top: 183.v,
            right: 26.h,
          ),
          child: Column(
            children: [
              Container(
                height: 121.adaptSize,
                width: 121.adaptSize,
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
              SizedBox(height: 13.v),
              Text(
                "lbl_awesome".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              SizedBox(
                width: 186.h,
                child: Text(
                  "msg_your_password_has".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBlack900.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                text: "lbl_back_to_login".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
