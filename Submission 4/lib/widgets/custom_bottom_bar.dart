import 'package:flutter/material.dart';
import 'package:waste_food_management_and_donation/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotification,
      activeIcon: ImageConstant.imgNavNotification,
      title: "lbl_notification".tr,
      type: BottomBarEnum.Notification,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 20.v,
                    width: 24.h,
                    color: appTheme.black900,
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodySmallBlack900.copyWith(
                        color: appTheme.black900.withOpacity(0.56),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.black900,
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodySmallBlack900.copyWith(
                        color: appTheme.black900.withOpacity(0.56),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Notification,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
