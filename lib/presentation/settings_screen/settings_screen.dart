import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildRowWithCircleImages(context),
                      _buildRowWithSettings(context),
                      Divider(color: appTheme.gray40001),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Text("Account Settings",
                              style: CustomTextStyles.bodyLargeGray500)),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "Edit profile",
                              onTapArrowRight: () {
                            onTapArrowRight(context);
                          })),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "Change password",
                              onTapArrowRight: () {
                            onTapArrowRight1(context);
                          })),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "Language",
                              onTapArrowRight: () {
                            onTapArrowRight2(context);
                          })),
                      SizedBox(height: 29.v),
                      _buildRowWithPushNotifications(context),
                      SizedBox(height: 32.v),
                      _buildRowWithDarkMode(context),
                      SizedBox(height: 32.v),
                      Divider(color: appTheme.gray40001),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Text("More",
                              style: CustomTextStyles.bodyLargeRubikGray500)),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "About us",
                              onTapArrowRight: () {
                            onTapArrowRight3(context);
                          })),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "Privacy policy",
                              onTapArrowRight: () {
                            onTapArrowRight4(context);
                          })),
                      SizedBox(height: 19.v),
                      _buildStackWithHomeButton(context),
                      SizedBox(height: 19.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildRowWithCircleImages(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
        decoration: AppDecoration.fillGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Container(
              height: 42.adaptSize,
              width: 42.adaptSize,
              margin: EdgeInsets.only(top: 35.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse7,
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    radius: BorderRadius.circular(21.h),
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    radius: BorderRadius.circular(16.h),
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 46.v, bottom: 6.v),
              child: Text("Turdieva Dilnaza Dilmuratovna",
                  style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildRowWithSettings(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
        decoration: AppDecoration.fillGray100,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: Text("Settings", style: theme.textTheme.headlineSmall)),
          CustomImageView(
              imagePath: ImageConstant.imgCloseWhiteA70001,
              height: 42.adaptSize,
              width: 42.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildRowWithPushNotifications(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 37.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text("Push notifications",
                          style: CustomTextStyles.bodyLargeGray80001)),
                  CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        isSelectedSwitch = value;
                      })
                ])));
  }

  /// Section Widget
  Widget _buildRowWithDarkMode(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 37.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text("Dark mode",
                          style: CustomTextStyles.bodyLargeGray80001)),
                  CustomSwitch(
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        isSelectedSwitch1 = value;
                      })
                ])));
  }

  /// Section Widget
  Widget _buildStackWithHomeButton(BuildContext context) {
    return SizedBox(
        height: 109.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSubtract,
              height: 101.v,
              width: 393.h,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 43.adaptSize,
                  width: 43.adaptSize,
                  margin: EdgeInsets.only(right: 34.h),
                  decoration: BoxDecoration(
                      color: appTheme.yellow900,
                      borderRadius: BorderRadius.circular(21.h)))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 42.h, top: 38.v),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMegaphone,
                        height: 20.v,
                        width: 21.h),
                    CustomImageView(
                        imagePath: ImageConstant.imgHomeOrange200,
                        height: 21.adaptSize,
                        width: 21.adaptSize,
                        margin: EdgeInsets.only(left: 118.h))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgSearchGray100,
              height: 21.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 11.v, right: 44.h))
        ]));
  }

  /// Common widget
  Widget _buildRowWithChangePassword(
    BuildContext context, {
    required String changePasswordText,
    Function? onTapArrowRight,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(changePasswordText,
              style: CustomTextStyles.bodyLargeGray80001
                  .copyWith(color: appTheme.gray80001)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 12.v,
              width: 7.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 8.v),
              onTap: () {
                onTapArrowRight!.call();
              })
        ]);
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapArrowRight1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapArrowRight2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapArrowRight3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapArrowRight4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyPolicyScreen);
  }
}
