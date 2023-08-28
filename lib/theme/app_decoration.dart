import 'package:flutter/material.dart';
import 'package:snap_chat_application/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray300 => BoxDecoration(
        color: appTheme.blueGray300,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray50,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray501 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray50,
            width: getHorizontalSize(1),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo50,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray502 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray50,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray503 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray50,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray504 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray505 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.9),
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray50,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray700 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray700,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray7001 => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.blueGray700,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray7002 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray700,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray7003 => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.blueGray700,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.secondaryContainer,
            width: getHorizontalSize(1),
          ),
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        getHorizontalSize(16),
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        getHorizontalSize(40),
      );

  // Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.only(
        topLeft: Radius.circular(getHorizontalSize(30)),
        topRight: Radius.circular(getHorizontalSize(30)),
        bottomRight: Radius.circular(getHorizontalSize(30)),
      );
  static BorderRadius get customBorderTL301 => BorderRadius.only(
        topLeft: Radius.circular(getHorizontalSize(30)),
        topRight: Radius.circular(getHorizontalSize(30)),
        bottomLeft: Radius.circular(getHorizontalSize(30)),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(8)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        getHorizontalSize(12),
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        getHorizontalSize(4),
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        getHorizontalSize(8),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
// double get strokeAlignInside => BorderSide.strokeAlignInside;
//
// double get strokeAlignCenter => BorderSide.strokeAlignCenter;
//
// double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    