import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_icon_button.dart';

class CongratulationsWindowScreen extends StatelessWidget {
  const CongratulationsWindowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 48.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("Successful!", style: theme.textTheme.displayLarge),
                  Text("Back to home",
                      style: CustomTextStyles.bodyLargeBluegray500),
                  SizedBox(height: 15.v),
                  CustomIconButton(
                      height: 51.v,
                      width: 56.h,
                      padding: EdgeInsets.all(14.h),
                      onTap: () {
                        onTapBtnTuda(context);
                      },
                      child: CustomImageView(imagePath: ImageConstant.imgTuda)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the rootMenuContainer1Screen when the action is triggered.
  onTapBtnTuda(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rootMenuContainer1Screen);
  }
}
