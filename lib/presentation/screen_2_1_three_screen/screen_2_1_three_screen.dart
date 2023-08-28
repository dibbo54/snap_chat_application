import 'package:flutter/material.dart';import 'package:snap_chat_application/core/app_export.dart';import 'package:snap_chat_application/widgets/custom_checkbox_button.dart';import 'package:snap_chat_application/widgets/custom_elevated_button.dart';import 'package:snap_chat_application/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class Screen21ThreeScreen extends StatelessWidget {Screen21ThreeScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

bool contrast = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 16, top: 10, right: 16, bottom: 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24), onTap: () {onTapImgArrowleftone(context);}), Spacer(), Container(width: getHorizontalSize(274), margin: getMargin(left: 24, right: 44), child: Text("Inter your phone number\nand password", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.headlineSmallInter.copyWith(height: 1.33))), Padding(padding: getPadding(left: 24, top: 38), child: Text("Email", style: CustomTextStyles.titleSmallOnPrimary)), CustomTextFormField(controller: emailController, margin: getMargin(left: 24, top: 8, right: 24), hintText: "|Input Email", hintStyle: CustomTextStyles.bodyMediumInterBluegray300, textInputType: TextInputType.emailAddress, alignment: Alignment.center, prefix: Container(margin: getMargin(left: 12, top: 8, right: 8, bottom: 8), child: CustomImageView(svgPath: ImageConstant.imgMail)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(36))), Padding(padding: getPadding(left: 24, top: 16), child: Text("Password", style: CustomTextStyles.titleSmallOnPrimary)), CustomTextFormField(controller: passwordController, margin: getMargin(left: 24, top: 8, right: 24), hintText: "|Input Password", hintStyle: CustomTextStyles.bodyMediumInterBluegray300, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, alignment: Alignment.center, prefix: Container(margin: getMargin(left: 12, top: 8, right: 8, bottom: 8), child: CustomImageView(svgPath: ImageConstant.imgIconLock)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)), suffix: Container(margin: getMargin(left: 30, top: 8, right: 12, bottom: 8), child: CustomImageView(svgPath: ImageConstant.imgEye)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)), obscureText: true, contentPadding: getPadding(top: 9, bottom: 9)), CustomCheckboxButton(text: "Save password", value: contrast, margin: getMargin(left: 24, top: 16), padding: getPadding(top: 1, bottom: 1), onChange: (value) {contrast = value;}), CustomElevatedButton(text: "Log In", margin: getMargin(left: 24, top: 42, right: 24, bottom: 42), buttonStyle: CustomButtonStyles.fillBlue, alignment: Alignment.center)]))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapImgArrowleftone(BuildContext context) { Navigator.pop(context); } 
 }
