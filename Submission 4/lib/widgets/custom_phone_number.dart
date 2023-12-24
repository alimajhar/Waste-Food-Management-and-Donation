import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: appTheme.gray200,
              border: Border.all(
                color: theme.colorScheme.onPrimaryContainer,
                width: 1.h,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 14.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    "+${country.phoneCode}",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 6.v,
                  width: 11.h,
                  margin: EdgeInsets.fromLTRB(9.h, 23.v, 15.h, 22.v),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: CustomTextFormField(
              width: 213.h,
              controller: controller,
              hintText: "lbl_mobile_number".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              borderDecoration:
                  TextFormFieldStyleHelper.outlineOnPrimaryContainer1,
              fillColor: appTheme.gray200,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
