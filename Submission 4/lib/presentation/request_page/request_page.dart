import 'models/request_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_text_form_field.dart';
import 'provider/request_provider.dart';

// ignore_for_file: must_be_immutable
class RequestPage extends StatefulWidget {
  const RequestPage({Key? key})
      : super(
          key: key,
        );

  @override
  RequestPageState createState() => RequestPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RequestProvider(),
      child: RequestPage(),
    );
  }
}

class RequestPageState extends State<RequestPage>
    with AutomaticKeepAliveClientMixin<RequestPage> {
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
                SizedBox(height: 27.v),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 26.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDonationHistory(context),
                        SizedBox(height: 496.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgUser,
                          height: 14.v,
                          width: 25.h,
                          margin: EdgeInsets.only(left: 65.h),
                        ),
                      ],
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
  Widget _buildDonationHistory(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.v,
          width: 319.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Selector<RequestProvider, TextEditingController?>(
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
                            Selector<RequestProvider, TextEditingController?>(
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
                            Selector<RequestProvider, TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.ricebowlwithcurryvalueController,
                              builder: (context,
                                  ricebowlwithcurryvalueController, child) {
                                return CustomTextFormField(
                                  width: 189.h,
                                  controller: ricebowlwithcurryvalueController,
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
                            SizedBox(height: 6.v),
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
                                        style:
                                            CustomTextStyles.labelMediumPrimary,
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
                                              child: SizedBox(
                                                width: 189.h,
                                                child: Divider(
                                                  color: appTheme.blueGray100,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 33.v,
                                            width: 31.h,
                                            alignment: Alignment.centerRight,
                                            margin:
                                                EdgeInsets.only(right: 17.h),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 13.v,
                                            width: 12.h,
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.only(
                                              right: 8.h,
                                              bottom: 8.v,
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
