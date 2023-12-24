import 'models/create_donation_listing_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_leading_image.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/custom_app_bar.dart';
import 'package:waste_food_management_and_donation/widgets/custom_drop_down.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_icon_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/create_donation_listing_provider.dart';

class CreateDonationListingScreen extends StatefulWidget {
  const CreateDonationListingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreateDonationListingScreenState createState() =>
      CreateDonationListingScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateDonationListingProvider(),
      child: CreateDonationListingScreen(),
    );
  }
}

class CreateDonationListingScreenState
    extends State<CreateDonationListingScreen> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 22.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "msg_listing_type_donation".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildAddTitleValue(context),
                  SizedBox(height: 15.v),
                  _buildDescription(context),
                  SizedBox(height: 15.v),
                  _buildTypeOfFood(context),
                  SizedBox(height: 14.v),
                  _buildFoodQuantity(context),
                  SizedBox(height: 10.v),
                  _buildSelectYourMeal(context),
                  SizedBox(height: 10.v),
                  _buildPhotos(context),
                  SizedBox(height: 19.v),
                  _buildExpirationDate(context),
                  SizedBox(height: 15.v),
                  _buildExpirationTime(context),
                  SizedBox(height: 17.v),
                  _buildView(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSubmit(context),
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
  Widget _buildAddTitleValue(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_add_title".tr,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child:
              Selector<CreateDonationListingProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.addTitlevalueController,
            builder: (context, addTitlevalueController, child) {
              return CustomTextFormField(
                controller: addTitlevalueController,
                hintText: "lbl_add_food_title".tr,
                hintStyle: CustomTextStyles.bodyMediumGray800,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 9.v,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_description".tr,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child:
              Selector<CreateDonationListingProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.descriptionController,
            builder: (context, descriptionController, child) {
              return CustomTextFormField(
                controller: descriptionController,
                hintText: "msg_eg_eggs_from_the".tr,
                hintStyle: CustomTextStyles.bodyMediumGray500,
                maxLines: 4,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 11.v,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypeOfFood(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_type_of_food".tr,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        SizedBox(height: 7.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Selector<CreateDonationListingProvider,
              CreateDonationListingModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.createDonationListingModelObj,
            builder: (context, createDonationListingModelObj, child) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.only(
                    left: 30.h,
                    right: 14.h,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage4,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                  ),
                ),
                hintText: "lbl_cooked_food_veg2".tr,
                hintStyle: CustomTextStyles.bodyMedium14,
                items: createDonationListingModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.only(
                  left: 10.h,
                  top: 9.v,
                  bottom: 9.v,
                ),
                onChanged: (value) {
                  context
                      .read<CreateDonationListingProvider>()
                      .onSelected(value);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFoodQuantity(BuildContext context) {
    return Selector<CreateDonationListingProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.foodQuantityController,
      builder: (context, foodQuantityController, child) {
        return CustomTextFormField(
          controller: foodQuantityController,
          hintText: "lbl_food_quantity".tr,
          hintStyle: CustomTextStyles.titleMediumBlack900Medium,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSelectYourMeal(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "msg_select_your_meal".tr,
            style: CustomTextStyles.bodyMediumGray800Light,
          ),
        ),
        SizedBox(height: 8.v),
        Container(
          margin: EdgeInsets.only(left: 1.h),
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlineGray50002,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text(
                        "lbl_veg".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: _buildSelectYourMealText(
                        context,
                        text: "lbl".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        top: 2.v,
                      ),
                      child: _buildSelectYourMealText(
                        context,
                        text: "lbl2".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(right: 32.h),
                child: Row(
                  children: [
                    Container(
                      width: 101.h,
                      margin: EdgeInsets.only(top: 2.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgClosePrimary,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Text(
                            "lbl_non_veg2".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      child: _buildSelectYourMealText(
                        context,
                        text: "lbl".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_0".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                      child: _buildSelectYourMealText(
                        context,
                        text: "lbl2".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhotos(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_photos".tr,
          style: CustomTextStyles.bodyLargeBlack900,
        ),
        Padding(
          padding: EdgeInsets.only(right: 29.h),
          child: Row(
            children: [
              SizedBox(
                height: 65.adaptSize,
                width: 65.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      alignment: Alignment.center,
                    ),
                    Selector<CreateDonationListingProvider,
                        TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.editTextController,
                      builder: (context, editTextController, child) {
                        return CustomTextFormField(
                          width: 56.h,
                          controller: editTextController,
                          alignment: Alignment.center,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                margin: EdgeInsets.only(left: 7.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 52.v,
                        width: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          border: Border.all(
                            color: appTheme.gray50002,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                margin: EdgeInsets.only(left: 7.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 52.v,
                        width: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          border: Border.all(
                            color: appTheme.gray50002,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 20.v,
                  bottom: 20.v,
                ),
                child: Text(
                  "lbl_add_more".tr,
                  style: CustomTextStyles.bodyMediumGray800Light,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_expiration_date".tr,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 1.h),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineGray800,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_01_jan_2024".tr,
                  style: CustomTextStyles.titleSmall14_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCalendar,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExpirationTime(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_expiration_time".tr,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child:
              Selector<CreateDonationListingProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.timeController,
            builder: (context, timeController, child) {
              return CustomTextFormField(
                controller: timeController,
                hintText: "lbl_09_00_am".tr,
                hintStyle: CustomTextStyles.titleSmall14_1,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 9.v,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 19.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 19.v,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                border: Border.all(
                  color: appTheme.gray400,
                  width: 1.h,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 275.h,
                margin: EdgeInsets.only(left: 9.h),
                child: Text(
                  "msg_i_assure_that_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 22.h,
        bottom: 15.v,
      ),
    );
  }

  /// Common widget
  Widget _buildSelectYourMealText(
    BuildContext context, {
    required String text,
  }) {
    return SizedBox(
      height: 21.v,
      width: 22.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomIconButton(
            height: 20.v,
            width: 22.h,
            alignment: Alignment.center,
            child: CustomImageView(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              text,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
