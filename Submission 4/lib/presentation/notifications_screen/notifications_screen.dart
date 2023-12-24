import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_subtitle.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/appbar_title_image.dart';
import 'package:waste_food_management_and_donation/widgets/app_bar/custom_app_bar.dart';
import 'provider/notifications_provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationsProvider(),
      child: NotificationsScreen(),
    );
  }
}

class NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              _buildNotifications(context),
              SizedBox(height: 81.v),
              Divider(
                color: appTheme.gray300,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 12.v,
                width: 25.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 65.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 140.h,
            ),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgArrow2,
                  margin: EdgeInsets.only(
                    top: 14.v,
                    bottom: 13.v,
                  ),
                ),
                AppbarSubtitle(
                  text: "lbl_notifications".tr,
                  margin: EdgeInsets.only(left: 22.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 327.h,
              child: Divider(),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 34.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray800,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_id_123".tr,
                        style: CustomTextStyles.titleMediumErrorContainer,
                      ),
                      SizedBox(height: 3.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_abc".tr,
                              style: CustomTextStyles.titleMediumGray700Medium,
                            ),
                            TextSpan(
                              text: "msg_has_asked_for_the".tr,
                              style: CustomTextStyles.bodyLargeGray700,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 28.v,
                  ),
                  child: Text(
                    "lbl_20_m_ago".tr,
                    style: CustomTextStyles.bodyMediumPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Divider(
            color: appTheme.gray300,
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                right: 2.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_id_1234567".tr,
                        style: CustomTextStyles.titleMediumGray600,
                      ),
                      SizedBox(height: 3.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_xyz".tr,
                              style: CustomTextStyles.titleMediumGray700Medium,
                            ),
                            TextSpan(
                              text: "msg_has_received_the".tr,
                              style: CustomTextStyles.bodyLargeGray700,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 28.v,
                    ),
                    child: Text(
                      "lbl_1_h_ago".tr,
                      style: CustomTextStyles.bodyMediumPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 48.v),
          Column(
            children: [
              Divider(
                color: appTheme.gray300,
              ),
              SizedBox(height: 9.v),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 23.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_id_456".tr,
                            style: CustomTextStyles.titleMediumGray600,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_2_h_ago".tr,
                              style: CustomTextStyles.bodySmallPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Container(
                      width: 296.h,
                      margin: EdgeInsets.only(
                        left: 23.h,
                        right: 2.h,
                      ),
                      child: Text(
                        "msg_mno_has_delivered".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumGray700.copyWith(
                          height: 1.88,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
