import '../models/six1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';

// ignore: must_be_immutable
class Six1ItemWidget extends StatelessWidget {
  Six1ItemWidget(
    this.six1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Six1ItemModel six1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray400031,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: six1ItemModelObj?.donorImage,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 28.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 28.v,
            ),
            child: Text(
              six1ItemModelObj.donorText!,
              style: CustomTextStyles.titleMediumBlack900_1,
            ),
          ),
        ],
      ),
    );
  }
}
