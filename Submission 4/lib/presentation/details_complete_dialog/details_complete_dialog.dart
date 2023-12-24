import 'models/details_complete_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_icon_button.dart';
import 'provider/details_complete_provider.dart';

class DetailsCompleteDialog extends StatefulWidget {
  const DetailsCompleteDialog({Key? key}) : super(key: key);

  @override
  DetailsCompleteDialogState createState() => DetailsCompleteDialogState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailsCompleteProvider(),
        child: DetailsCompleteDialog());
  }
}

class DetailsCompleteDialogState extends State<DetailsCompleteDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 307.h,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 34.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: () {
                onTapBtnClose(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgClose)),
          SizedBox(height: 17.v),
          Text("msg_congrats_donor".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 8.v),
          Text("msg_your_information".tr,
              style: CustomTextStyles.bodyLargeBlack900),
          SizedBox(height: 29.v),
          CustomElevatedButton(text: "lbl_continue".tr),
          SizedBox(height: 5.v)
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
