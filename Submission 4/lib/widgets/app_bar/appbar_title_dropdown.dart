import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
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
        items: items,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
