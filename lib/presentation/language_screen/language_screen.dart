import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container_page/root_menu_container_page.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key}) : super(key: key);

  String suggestedRadioGroup = "";

  List<String> radioList = ["lbl_english_us", "lbl_russian"];

  String othersRadioGroup = "";

  List<String> radioList1 = [
    "lbl_mandarin",
    "lbl_hindi",
    "lbl_spanish",
    "lbl_french",
    "lbl_arabic",
    "lbl_english_uk",
    "lbl_indonesia",
    "lbl_vietnamese"
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildRowWithCircleImages(context),
                              _buildRowWithArrowAndLanguage(context),
                              SizedBox(height: 32.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("Suggested",
                                      style: CustomTextStyles
                                          .titleMediumPoppinsBlack90001)),
                              SizedBox(height: 11.v),
                              _buildSuggestedRadioGroup(context),
                              SizedBox(height: 45.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("Others",
                                      style: CustomTextStyles
                                          .titleMediumPoppinsBlack90001)),
                              SizedBox(height: 13.v),
                              _buildOthersRadioGroup(context)
                            ])))),
            bottomNavigationBar: _buildBottomBar(context)));
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
  Widget _buildRowWithArrowAndLanguage(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 11.v),
        decoration: AppDecoration.fillGray100,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 23.v,
              width: 15.h,
              margin: EdgeInsets.only(top: 19.v, bottom: 8.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 90.h, top: 17.v),
              child: Text("Language", style: theme.textTheme.headlineSmall))
        ]));
  }

  /// Section Widget
  Widget _buildSuggestedRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Column(children: [
              CustomRadioButton(
                  width: 342.h,
                  text: "English (US)",
                  value: radioList[0],
                  groupValue: suggestedRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  isRightCheck: true,
                  onChange: (value) {
                    suggestedRadioGroup = value;
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "Russian",
                      value: radioList[1],
                      groupValue: suggestedRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      isRightCheck: true,
                      onChange: (value) {
                        suggestedRadioGroup = value;
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildOthersRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Column(children: [
              CustomRadioButton(
                  width: 342.h,
                  text: "Mandarin",
                  value: radioList1[0],
                  groupValue: othersRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  isRightCheck: true,
                  onChange: (value) {
                    othersRadioGroup = value;
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "Hindi",
                      value: radioList1[1],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "Spanish",
                      value: radioList1[2],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "French",
                      value: radioList1[3],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "Arabic",
                      value: radioList1[4],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "English (UK)",
                      value: radioList1[5],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "Indonesia",
                      value: radioList1[6],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: CustomRadioButton(
                      width: 342.h,
                      text: "Vietnamese",
                      value: radioList1[7],
                      groupValue: othersRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      isRightCheck: true,
                      onChange: (value) {
                        othersRadioGroup = value;
                      }))
            ])));
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
