import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container_page/root_menu_container_page.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(child: _buildAboutUs(context))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildAboutUs(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.v),
        child: Column(children: [
          Container(
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
                    padding:
                        EdgeInsets.only(left: 13.h, top: 46.v, bottom: 6.v),
                    child: Text("Turdieva Dilnaza Dilmuratovna",
                        style: theme.textTheme.bodyLarge))
              ])),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 14.v),
              decoration: AppDecoration.fillGray100,
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 23.v,
                    width: 15.h,
                    margin: EdgeInsets.only(top: 16.v, bottom: 5.v),
                    onTap: () {
                      onTapImgArrowLeft(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 90.h, top: 12.v),
                    child:
                        Text("About Us", style: theme.textTheme.headlineSmall))
              ]))
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
