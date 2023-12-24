import 'models/receiver_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_leading_image.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/custom_app_bar.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_phone_number.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/receiver_details_provider.dart';

class ReceiverDetailsScreen extends StatefulWidget {
  const ReceiverDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ReceiverDetailsScreenState createState() => ReceiverDetailsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReceiverDetailsProvider(),
      child: ReceiverDetailsScreen(),
    );
  }
}

class ReceiverDetailsScreenState extends State<ReceiverDetailsScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_receiver_details".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildReceiverDetailsName(context),
                SizedBox(height: 16.v),
                _buildReceiverDetailsName1(context),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: _buildPhoneNumber(context),
                ),
                SizedBox(height: 16.v),
                _buildReceiverDetailsEmail(context),
                SizedBox(height: 19.v),
                Divider(
                  endIndent: 7.h,
                ),
                SizedBox(height: 15.v),
                _buildReceiverDetailsAddress(context),
                SizedBox(height: 16.v),
                _buildReceiverDetailsPincode(context),
                SizedBox(height: 16.v),
                _buildReceiverDetailsCity(context),
                SizedBox(height: 13.v),
                _buildReceiverDetailsLine(context),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 84.h),
                    child: Text(
                      "msg_pin_location_by".tr,
                      style: CustomTextStyles.titleSmallPrimarySemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow2,
        margin: EdgeInsets.fromLTRB(27.h, 26.v, 306.h, 26.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Selector<ReceiverDetailsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.receiverDetailsNameController,
        builder: (context, receiverDetailsNameController, child) {
          return CustomTextFormField(
            controller: receiverDetailsNameController,
            hintText: "lbl_receiver_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsName1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Selector<ReceiverDetailsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.receiverDetailsNameController1,
        builder: (context, receiverDetailsNameController1, child) {
          return CustomTextFormField(
            controller: receiverDetailsNameController1,
            hintText: "msg_contact_name_optional".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Consumer<ReceiverDetailsProvider>(
        builder: (context, provider, child) {
          return CustomPhoneNumber(
            country: provider.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: provider.phoneNumberController,
            onTap: (Country value) {
              context.read<ReceiverDetailsProvider>().changeCountry(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Selector<ReceiverDetailsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.receiverDetailsEmailController,
        builder: (context, receiverDetailsEmailController, child) {
          return CustomTextFormField(
            controller: receiverDetailsEmailController,
            hintText: "lbl_email_id".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer1,
            fillColor: appTheme.gray200,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Selector<ReceiverDetailsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.receiverDetailsAddressController,
        builder: (context, receiverDetailsAddressController, child) {
          return CustomTextFormField(
            controller: receiverDetailsAddressController,
            hintText: "lbl_address".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsPincode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Selector<ReceiverDetailsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.receiverDetailsPincodeController,
        builder: (context, receiverDetailsPincodeController, child) {
          return CustomTextFormField(
            controller: receiverDetailsPincodeController,
            hintText: "lbl_pin_code".tr,
            textInputType: TextInputType.number,
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_number".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsCity(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Selector<ReceiverDetailsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.receiverDetailsCityController,
        builder: (context, receiverDetailsCityController, child) {
          return CustomTextFormField(
            controller: receiverDetailsCityController,
            hintText: "lbl_city".tr,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiverDetailsLine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 129.h,
              child: Divider(),
            ),
          ),
          Text(
            "lbl_or2".tr,
            style: CustomTextStyles.titleSmallOnPrimaryContainer,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 129.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(
        left: 23.h,
        right: 30.h,
        bottom: 32.v,
      ),
    );
  }
}
