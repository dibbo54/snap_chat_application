import 'package:flutter/material.dart';import 'package:snap_chat_application/core/app_export.dart';import 'package:snap_chat_application/widgets/custom_elevated_button.dart';class ScreenOneThreeScreen extends StatelessWidget {const ScreenOneThreeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: Container(width: double.maxFinite, padding: getPadding(left: 40, right: 40), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("SociaLive", style: CustomTextStyles.headlineSmallWhiteA700), CustomElevatedButton(text: "Create Account", margin: getMargin(top: 40), buttonStyle: CustomButtonStyles.fillPrimary), GestureDetector(onTap: () {onTapTxtCreateaccount(context);}, child: Padding(padding: getPadding(top: 26, bottom: 5), child: Text("Log In", style: CustomTextStyles.titleSmallPrimary)))])))); } 
/// Navigates to the screen21OneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the screen21OneScreen.
onTapTxtCreateaccount(BuildContext context) { Navigator.pushNamed(context, AppRoutes.screen21OneScreen); } 
 }
