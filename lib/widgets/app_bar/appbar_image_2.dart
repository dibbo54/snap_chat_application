import 'package:flutter/material.dart';
import 'package:snap_chat_application/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage2 extends StatelessWidget {
  AppbarImage2({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(24),
          width: getSize(24),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
