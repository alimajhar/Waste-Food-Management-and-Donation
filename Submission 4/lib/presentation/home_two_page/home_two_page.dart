import 'models/home_two_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/home_two_provider.dart';

// ignore_for_file: must_be_immutable
class HomeTwoPage extends StatefulWidget {
  const HomeTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTwoPageState createState() => HomeTwoPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeTwoProvider(),
      child: HomeTwoPage(),
    );
  }
}

class HomeTwoPageState extends State<HomeTwoPage>
    with AutomaticKeepAliveClientMixin<HomeTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      _buildDonationPostSection(context),
                      SizedBox(height: 20.v),
                      _buildDonationHistorySection(context),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 12.v,
                        width: 25.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 63.h),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationPostSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillGray10001,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_nothing_till_now".tr,
            style: CustomTextStyles.bodyMediumGray40002,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.blueGray100,
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_do_you_have_some".tr,
            style: CustomTextStyles.bodySmall12,
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 46.v,
            text: "msg_create_donation".tr,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 10.h,
            ),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTwemojiheavyplussign,
                height: 15.v,
                width: 16.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL5,
            buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationHistorySection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.v,
          width: 319.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Selector<HomeTwoProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.donationHistoryController,
                builder: (context, donationHistoryController, child) {
                  return CustomTextFormField(
                    width: 319.h,
                    controller: donationHistoryController,
                    hintText: "lbl_donaton_history".tr,
                    hintStyle: CustomTextStyles.bodyMedium14,
                    alignment: Alignment.bottomCenter,
                    borderDecoration:
                        TextFormFieldStyleHelper.underLineBlueGray,
                    filled: false,
                  );
                },
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    "lbl_view_all".tr,
                    style: CustomTextStyles.bodyMediumPrimary14,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          height: 104.v,
          width: 319.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 92.v,
                  width: 110.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 33.v,
                  ),
                  decoration: AppDecoration.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup8,
                    height: 25.v,
                    width: 70.h,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 104.v,
                  width: 319.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: SizedBox(
                            width: 319.h,
                            child: Divider(
                              color: appTheme.blueGray100,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Selector<HomeTwoProvider, TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.durationController,
                              builder: (context, durationController, child) {
                                return CustomTextFormField(
                                  width: 189.h,
                                  controller: durationController,
                                  hintText: "msg_id_324800".tr,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .underLineBlueGray,
                                  filled: false,
                                );
                              },
                            ),
                            SizedBox(height: 4.v),
                            Selector<HomeTwoProvider, TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.foodItemController,
                              builder: (context, foodItemController, child) {
                                return CustomTextFormField(
                                  width: 189.h,
                                  controller: foodItemController,
                                  hintText: "msg_rice_bowl_with_curry".tr,
                                  hintStyle: CustomTextStyles
                                      .bodySmallOnPrimaryContainer,
                                  textInputAction: TextInputAction.done,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .underLineBlueGray,
                                  filled: false,
                                );
                              },
                            ),
                            SizedBox(height: 3.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    child: Text(
                                      "lbl_10_plate".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer,
                                    ),
                                  ),
                                  Container(
                                    width: 58.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.h,
                                      vertical: 1.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_non_veg".tr,
                                      style: CustomTextStyles.bodySmall8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.v),
                            SizedBox(
                              height: 33.v,
                              width: 189.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 7.v),
                                      child: Text(
                                        "lbl_completed".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 33.v,
                                      width: 189.h,
                                      child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    width: 189.h,
                                                    child: Divider(
                                                      color:
                                                          appTheme.blueGray100,
                                                    ),
                                                  ),
                                                  SizedBox(height: 7.v),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgVector,
                                                    height: 13.v,
                                                    width: 12.h,
                                                    alignment:
                                                        Alignment.centerRight,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 33.v,
                                            width: 32.h,
                                            alignment: Alignment.centerRight,
                                            margin:
                                                EdgeInsets.only(right: 16.h),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
