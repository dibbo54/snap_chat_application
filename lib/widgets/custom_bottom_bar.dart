import 'package:flutter/material.dart';
import 'package:snap_chat_application/core/app_export.dart';

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
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      activeIcon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconaddOnprimary,
      activeIcon: ImageConstant.imgIconaddOnprimary,
      type: BottomBarEnum.Iconaddonprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconprofile,
      activeIcon: ImageConstant.imgIconprofile,
      type: BottomBarEnum.Iconprofile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(90),
      decoration: BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.9),
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray50,
            width: getHorizontalSize(1),
          ),
        ),
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
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getSize(24),
              width: getSize(24),
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
            activeIcon: Container(
              padding: getPadding(
                left: 24,
                top: 8,
                right: 24,
                bottom: 8,
              ),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: CustomImageView(
                svgPath: bottomMenuList[index].activeIcon,
                height: getSize(24),
                width: getSize(24),
                color: theme.colorScheme.primary,
                margin: getMargin(
                  top: 8,
                  bottom: 8,
                ),
              ),
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
  Search,
  Iconaddonprimary,
  Iconprofile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

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
