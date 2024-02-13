import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container_page/root_menu_container_page.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_elevated_button.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildColumn(context),
                      SizedBox(height: 256.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgSubtract,
                        height: 101.v,
                        width: 393.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 43.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: Container(
        height: 42.adaptSize,
        width: 42.adaptSize,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 49.v,
          bottom: 14.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse7,
              height: 42.adaptSize,
              width: 42.adaptSize,
              radius: BorderRadius.circular(
                21.h,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse5,
              height: 33.adaptSize,
              width: 33.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(4.h),
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Turdieva Dilnaza Dilmuratovna",
        margin: EdgeInsets.only(
          top: 60.v,
          bottom: 20.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 37.h),
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.outlineBlack900012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "Theme",
              style: CustomTextStyles.titleLargeGray80001,
            ),
          ),
          SizedBox(height: 7.v),
          Divider(
            color: appTheme.black90001.withOpacity(0.79),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 213.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Text(
              "text text text text text text text text",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumK2DGray80001,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAttach,
                  height: 10.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 1.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "file name.pdf",
                    style: CustomTextStyles.bodySmallGray700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 183.v),
          CustomElevatedButton(
            height: 29.v,
            width: 107.h,
            text: "Confirm",
            buttonStyle: CustomButtonStyles.fillYellow,
            buttonTextStyle: CustomTextStyles.bodySmallWhiteA7000110,
            alignment: Alignment.center,
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
