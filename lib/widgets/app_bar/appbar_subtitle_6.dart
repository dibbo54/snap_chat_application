import 'package:flutter/material.dart';
import 'package:snap_chat_application/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle6 extends StatelessWidget {
  AppbarSubtitle6({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodySmallBluegray700.copyWith(
            color: appTheme.blueGray700,
          ),
        ),
      ),
    );
  }
}
