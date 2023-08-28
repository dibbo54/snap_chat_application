import 'package:flutter/material.dart';
import 'package:snap_chat_application/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? getVerticalSize(44),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? getVerticalSize(44),
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: getVerticalSize(44),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.blueGray900,
          ),
        );
      case Style.bgOutline:
        return Container(
          height: getVerticalSize(44),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            border: Border(
              bottom: BorderSide(
                color: appTheme.blueGray50,
                width: getHorizontalSize(1),
              ),
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: getVerticalSize(44),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgOutline,
  bgFill,
}
