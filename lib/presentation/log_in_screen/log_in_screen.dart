import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_elevated_button.dart';
import 'package:hojiakbar_s_app/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 20.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: SizedBox(
                                  height: 889.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.img,
                                            height: 213.v,
                                            width: 386.h,
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25.h,
                                                    vertical: 40.v),
                                                decoration: AppDecoration
                                                    .outlineBlack
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder43),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          width: 285.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 35.h,
                                                                  right: 21.h),
                                                          child: Text(
                                                              "Welcome \nto OMNICOMM!",
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .displayMedium)),
                                                      SizedBox(height: 15.v),
                                                      Text("Log in ",
                                                          style: CustomTextStyles
                                                              .headlineSmallBlack90001),
                                                      SizedBox(height: 9.v),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      11.h),
                                                          child: CustomFloatingTextField(
                                                              controller:
                                                                  emailController,
                                                              labelText:
                                                                  "Email",
                                                              labelStyle:
                                                                  CustomTextStyles
                                                                      .bodySmallBlack90001,
                                                              hintText: "Email",
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodySmallBlack90001,
                                                              textInputType:
                                                                  TextInputType
                                                                      .emailAddress)),
                                                      SizedBox(height: 24.v),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      11.h),
                                                          child: CustomFloatingTextField(
                                                              controller:
                                                                  passwordController,
                                                              labelText:
                                                                  "Password",
                                                              labelStyle:
                                                                  CustomTextStyles
                                                                      .bodySmallBlack90001,
                                                              hintText:
                                                                  "Password",
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodySmallBlack90001,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              textInputType:
                                                                  TextInputType
                                                                      .visiblePassword,
                                                              obscureText:
                                                                  true)),
                                                      SizedBox(height: 51.v),
                                                      CustomElevatedButton(
                                                          width: 139.h,
                                                          text: "GO!",
                                                          onPressed: () {
                                                            onTapGO(context);
                                                          }),
                                                      SizedBox(height: 135.v),
                                                      RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "Don't have an account? Read ",
                                                                    style: CustomTextStyles
                                                                        .bodyMediumK2Dff000000),
                                                                TextSpan(
                                                                    text:
                                                                        "How to create an account",
                                                                    style: CustomTextStyles
                                                                        .bodyMediumK2Dff356070)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left),
                                                      SizedBox(height: 47.v)
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Navigates to the rootMenuContainer1Screen when the action is triggered.
  onTapGO(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rootMenuContainer1Screen);
  }
}
