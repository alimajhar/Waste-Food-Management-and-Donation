import 'models/home_one_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_outlined_button.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/home_one_provider.dart';

// ignore_for_file: must_be_immutable
class HomeOnePage extends StatefulWidget {
  const HomeOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeOnePageState createState() => HomeOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeOneProvider(),
      child: HomeOnePage(),
    );
  }
}

class HomeOnePageState extends State<HomeOnePage>
    with AutomaticKeepAliveClientMixin<HomeOnePage> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 19.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25.v,
                        width: 62.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup,
                              height: 14.v,
                              width: 24.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 11.h),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "lbl_food_title".tr,
                                style: CustomTextStyles.titleSmallGray800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 53.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 65.adaptSize,
                              width: 65.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
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
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage7,
                                    height: 65.adaptSize,
                                    width: 65.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 87.h,
                              margin: EdgeInsets.only(
                                left: 13.h,
                                top: 9.v,
                                bottom: 13.v,
                              ),
                              child: Text(
                                "lbl_cooked_food_veg".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium14.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: SizedBox(
                                height: 64.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color: appTheme.black900,
                                  indent: 10.h,
                                  endIndent: 13.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 17.h,
                                top: 9.v,
                                bottom: 13.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_veg_5".tr,
                                    style: CustomTextStyles.titleSmall14,
                                  ),
                                  Text(
                                    "lbl_non_veg_5".tr,
                                    style: CustomTextStyles.titleSmall14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_expiration_date2".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "lbl_15_feb_2023".tr,
                                style: CustomTextStyles.labelLarge12,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      CustomOutlinedButton(
                        text: "msg_your_request_is".tr,
                      ),
                      SizedBox(height: 1.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 7.v,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMenu,
                                height: 7.v,
                                width: 12.h,
                                margin: EdgeInsets.only(left: 8.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildThirtyFour(context),
                      SizedBox(height: 10.v),
                      _buildDonatonHistory(context),
                      SizedBox(height: 188.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 14.v,
                        width: 25.h,
                        margin: EdgeInsets.only(left: 70.h),
                      ),
                    ],
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
  Widget _buildThirtyFour(BuildContext context) {
    return Container(
      width: 319.h,
      margin: EdgeInsets.only(
        left: 7.h,
        right: 5.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 41.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray10001,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_do_you_have_some".tr,
            style: CustomTextStyles.bodySmall12,
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            height: 46.v,
            text: "msg_create_more_donation".tr,
            margin: EdgeInsets.only(left: 8.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTwemojiheavyplussign,
                height: 15.v,
                width: 16.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL5,
            buttonTextStyle: CustomTextStyles.bodyLargeRobotoOnErrorContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDonatonHistory(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Column(
        children: [
          SizedBox(
            height: 25.v,
            width: 319.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Selector<HomeOneProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.donatonHistoryController,
                  builder: (context, donatonHistoryController, child) {
                    return CustomTextFormField(
                      width: 319.h,
                      controller: donatonHistoryController,
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
                      style: CustomTextStyles.bodyMediumLightblue500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 92.v,
                width: 110.h,
                margin: EdgeInsets.only(bottom: 4.v),
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
              Column(
                children: [
                  Selector<HomeOneProvider, TextEditingController?>(
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
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineBlueGray,
                        filled: false,
                      );
                    },
                  ),
                  SizedBox(height: 4.v),
                  Selector<HomeOneProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.foodTitleController,
                    builder: (context, foodTitleController, child) {
                      return CustomTextFormField(
                        width: 189.h,
                        controller: foodTitleController,
                        hintText: "msg_rice_bowl_with_curry".tr,
                        hintStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
                        textInputAction: TextInputAction.done,
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineBlueGray,
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
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            "lbl_10_plate".tr,
                            style: CustomTextStyles.bodySmallOnPrimaryContainer,
                          ),
                        ),
                        Container(
                          width: 58.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "lbl_non_veg".tr,
                            style: CustomTextStyles.bodySmall8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  SizedBox(
                    width: 189.h,
                    child: Divider(
                      color: appTheme.blueGray100,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_completed".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
