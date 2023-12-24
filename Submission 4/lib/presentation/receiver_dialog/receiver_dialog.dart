import 'models/receiver_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_icon_button.dart';
import 'provider/receiver_provider.dart';

class ReceiverDialog extends StatefulWidget {
  const ReceiverDialog({Key? key}) : super(key: key);

  @override
  ReceiverDialogState createState() => ReceiverDialogState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReceiverProvider(), child: ReceiverDialog());
  }
}

class ReceiverDialogState extends State<ReceiverDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 307.h,
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 34.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(children: [
          CustomIconButton(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: () {
                onTapBtnClose(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgClose)),
          SizedBox(height: 16.v),
          Text("msg_congrats_receiver".tr,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 10.v),
          Text("msg_you_are_all_set".tr,
              style: CustomTextStyles.bodyLargeBlack900),
          SizedBox(height: 86.v)
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
