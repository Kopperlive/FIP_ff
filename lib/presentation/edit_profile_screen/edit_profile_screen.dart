import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container_page/root_menu_container_page.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_floating_text_field.dart';
import 'package:hojiakbar_s_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController genrevalueController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildRow(context),
                          SizedBox(height: 31.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 23.v,
                              width: 15.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 32.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 130.v,
                                  width: 127.h,
                                  margin: EdgeInsets.only(left: 126.h),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle6,
                                            height: 120.adaptSize,
                                            width: 120.adaptSize,
                                            radius: BorderRadius.circular(60.h),
                                            alignment: Alignment.topLeft),
                                        CustomIconButton(
                                            height: 46.adaptSize,
                                            width: 46.adaptSize,
                                            padding: EdgeInsets.all(11.h),
                                            decoration: IconButtonStyleHelper
                                                .outlineWhiteA,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgLineDesignEditLine))
                                      ]))),
                          SizedBox(height: 13.v),
                          Padding(
                              padding: EdgeInsets.only(left: 26.h, right: 25.h),
                              child: CustomFloatingTextField(
                                  controller: emailController,
                                  labelText: "Email",
                                  labelStyle:
                                      CustomTextStyles.bodySmallBlack90001_1,
                                  hintText: "Email",
                                  hintStyle:
                                      CustomTextStyles.bodySmallBlack90001_1,
                                  textInputType: TextInputType.emailAddress)),
                          SizedBox(height: 13.v),
                          Padding(
                              padding: EdgeInsets.only(left: 26.h, right: 25.h),
                              child: CustomFloatingTextField(
                                  controller: phoneNumberController,
                                  labelText: "Phone number",
                                  labelStyle:
                                      CustomTextStyles.bodySmallBlack90001_1,
                                  hintText: "Phone number",
                                  hintStyle:
                                      CustomTextStyles.bodySmallBlack90001_1,
                                  textInputType: TextInputType.phone)),
                          SizedBox(height: 13.v),
                          _buildGenrevalue(context)
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
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
  Widget _buildGenrevalue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 163.h,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 10.v),
              decoration: AppDecoration.outlineBlack900013
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Country",
                              style: CustomTextStyles.bodySmallBlack90001),
                          SizedBox(height: 4.v),
                          Text("Kyrgyzstan",
                              style: CustomTextStyles.bodySmallBlack90001_1)
                        ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorGray50001,
                        height: 5.v,
                        width: 10.h,
                        margin: EdgeInsets.only(top: 15.v, bottom: 16.v))
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomFloatingTextField(
                  width: 163.h,
                  controller: genrevalueController,
                  labelText: "Genre",
                  labelStyle: CustomTextStyles.bodySmallBlack90001_1,
                  hintText: "Genre",
                  hintStyle: CustomTextStyles.bodySmallBlack90001_1,
                  textInputAction: TextInputAction.done))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Orange20020x21:
        return AppRoutes.rootMenuContainerPage;
      case BottomBarEnum.Vector:
        return "/";
      case BottomBarEnum.Orange200:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.rootMenuContainerPage:
        return RootMenuContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
