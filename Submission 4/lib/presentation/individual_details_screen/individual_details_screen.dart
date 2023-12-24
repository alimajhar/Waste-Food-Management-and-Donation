import 'models/individual_details_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/core/utils/validation_functions.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_phone_number.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/individual_details_provider.dart';

class IndividualDetailsScreen extends StatefulWidget {
  const IndividualDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  IndividualDetailsScreenState createState() => IndividualDetailsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IndividualDetailsProvider(),
      child: IndividualDetailsScreen(),
    );
  }
}

class IndividualDetailsScreenState extends State<IndividualDetailsScreen> {
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
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 36.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 26.h,
                        right: 26.h,
                        bottom: 207.v,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_donor_details".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          SizedBox(height: 23.v),
                          _buildDonorDetails(context),
                          SizedBox(height: 16.v),
                          _buildPhoneNumber(context),
                          SizedBox(height: 16.v),
                          _buildEmail(context),
                          SizedBox(height: 17.v),
                          Divider(),
                          SizedBox(height: 15.v),
                          _buildAddress(context),
                          SizedBox(height: 16.v),
                          _buildPincode(context),
                          SizedBox(height: 16.v),
                          _buildCity(context),
                          SizedBox(height: 13.v),
                          _buildLineTwentyThree(context),
                          SizedBox(height: 10.v),
                          Text(
                            "msg_pin_location_by".tr,
                            style: CustomTextStyles.titleSmallPrimarySemiBold,
                          ),
                          SizedBox(height: 33.v),
                          _buildSubmit(context),
                        ],
                      ),
                    ),
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
  Widget _buildDonorDetails(BuildContext context) {
    return Selector<IndividualDetailsProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.donorDetailsController,
      builder: (context, donorDetailsController, child) {
        return CustomTextFormField(
          controller: donorDetailsController,
          hintText: "lbl_full_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Consumer<IndividualDetailsProvider>(
      builder: (context, provider, child) {
        return CustomPhoneNumber(
          country: provider.selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: provider.phoneNumberController,
          onTap: (Country value) {
            context.read<IndividualDetailsProvider>().changeCountry(value);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<IndividualDetailsProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailController,
      builder: (context, emailController, child) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email_id".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer1,
          fillColor: appTheme.gray200,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Selector<IndividualDetailsProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.addressController,
      builder: (context, addressController, child) {
        return CustomTextFormField(
          controller: addressController,
          hintText: "lbl_address".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPincode(BuildContext context) {
    return Selector<IndividualDetailsProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.pincodeController,
      builder: (context, pincodeController, child) {
        return CustomTextFormField(
          controller: pincodeController,
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
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Selector<IndividualDetailsProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cityController,
      builder: (context, cityController, child) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "lbl_city".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLineTwentyThree(BuildContext context) {
    return Row(
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
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_submit".tr,
    );
  }
}
