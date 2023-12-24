import 'models/add_pickup_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'provider/add_pickup_provider.dart';

class AddPickupScreen extends StatefulWidget {
  const AddPickupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddPickupScreenState createState() => AddPickupScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddPickupProvider(),
      child: AddPickupScreen(),
    );
  }
}

class AddPickupScreenState extends State<AddPickupScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 77.h,
                  child: Text(
                    "lbl_ngo_1".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeGray50001.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 29,
              ),
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
              SizedBox(height: 16.v),
              Text(
                "lbl_congrats".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "msg_successfully_food".tr,
                style: CustomTextStyles.bodyLargeBlack900,
              ),
              SizedBox(height: 21.v),
              Divider(
                color: appTheme.gray40001,
                indent: 34.h,
                endIndent: 35.h,
              ),
              Spacer(
                flex: 29,
              ),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
                margin: EdgeInsets.only(
                  left: 26.h,
                  right: 27.h,
                ),
              ),
              Spacer(
                flex: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
