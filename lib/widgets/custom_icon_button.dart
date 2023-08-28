import 'package:flutter/material.dart';
import 'package:snap_chat_application/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(14.00)),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: getHorizontalSize(1.00),
                    ),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
        borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
      );
  static BoxDecoration get outlinePrimaryTL20 => BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get outlinePrimaryTL16 => BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get outlinePrimaryTL201 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(getHorizontalSize(25.00)),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(getHorizontalSize(25.00)),
      );
}
