import '../select_profile_screen/widgets/six1_item_widget.dart';
import 'models/select_profile_model.dart';
import 'models/six1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';
import 'package:waste_food_management_and_donation/widgets/custom_elevated_button.dart';
import 'provider/select_profile_provider.dart';

class SelectProfileScreen extends StatefulWidget {
  const SelectProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectProfileScreenState createState() => SelectProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectProfileProvider(),
      child: SelectProfileScreen(),
    );
  }
}

class SelectProfileScreenState extends State<SelectProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 26.h,
            top: 70.v,
            right: 26.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_choose_your_role".tr,
                  style: CustomTextStyles.titleLargeRegular,
                ),
              ),
              SizedBox(height: 20.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Consumer<SelectProfileProvider>(
                    builder: (context, provider, child) {
                      return ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 21.v,
                          );
                        },
                        itemCount:
                            provider.selectProfileModelObj.six1ItemList.length,
                        itemBuilder: (context, index) {
                          Six1ItemModel model = provider
                              .selectProfileModelObj.six1ItemList[index];
                          return Six1ItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_continue".tr,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 27.h,
        bottom: 47.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL8,
    );
  }
}
