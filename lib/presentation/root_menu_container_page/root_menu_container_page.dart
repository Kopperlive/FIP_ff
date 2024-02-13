import '../root_menu_container_page/widgets/learnmoreaboutfinancialliterac_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class RootMenuContainerPage extends StatelessWidget {
  RootMenuContainerPage({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildRowWithCircleImages(context),
                          SizedBox(height: 14.v),
                          _buildStackWithSlider(context),
                          SizedBox(height: 18.v),
                          Text("Please, confirm reports",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  theme: "Theme",
                                  fileNamePdf: "file name.pdf", onTapTuda: () {
                                onTapTuda(context);
                              })),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  theme: "Theme",
                                  fileNamePdf: "file name.pdf", onTapTuda: () {
                                onTapTuda1(context);
                              })),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  theme: "Theme",
                                  fileNamePdf: "file name.pdf", onTapTuda: () {
                                onTapTuda2(context);
                              })),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  theme: "Theme",
                                  fileNamePdf: "file name.pdf", onTapTuda: () {
                                onTapTuda3(context);
                              }))
                        ]))))));
  }

  /// Section Widget
  Widget _buildRowWithCircleImages(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack90001,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
                  padding: EdgeInsets.only(left: 7.h, top: 48.v, bottom: 4.v),
                  child: Text("Турдиева Дильназа Дильмуратовна",
                      style: theme.textTheme.bodyLarge))
            ]));
  }

  /// Section Widget
  Widget _buildStackWithSlider(BuildContext context) {
    return SizedBox(
        height: 201.v,
        width: 392.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CarouselSlider.builder(
              options: CarouselOptions(
                  height: 201.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    sliderIndex = index;
                  }),
              itemCount: 1,
              itemBuilder: (context, index, realIndex) {
                return LearnmoreaboutfinancialliteracItemWidget(onTapText: () {
                  onTapText(context);
                });
              }),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 6.v,
                  margin: EdgeInsets.only(bottom: 9.v),
                  child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 2,
                          activeDotColor: appTheme.yellow900,
                          dotColor: appTheme.blueGray100,
                          dotHeight: 6.v,
                          dotWidth: 6.h))))
        ]));
  }

  /// Common widget
  Widget _buildRowWithReport2(
    BuildContext context, {
    required String theme,
    required String fileNamePdf,
    Function? onTapTuda,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(theme,
                            style: CustomTextStyles.bodyLargeGray8000119
                                .copyWith(color: appTheme.gray80001)),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgAttach,
                                  height: 11.v,
                                  width: 9.h,
                                  margin: EdgeInsets.symmetric(vertical: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(fileNamePdf,
                                      style: CustomTextStyles
                                          .bodySmallGray700Light
                                          .copyWith(color: appTheme.gray700)))
                            ]))
                      ])),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  child: CustomIconButton(
                      height: 26.v,
                      width: 29.h,
                      padding: EdgeInsets.all(7.h),
                      onTap: () {
                        onTapTuda!.call();
                      },
                      child: CustomImageView(imagePath: ImageConstant.imgTuda)))
            ]));
  }

  /// Navigates to the howToUseOmnicommScreen when the action is triggered.
  onTapText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.howToUseOmnicommScreen);
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapTuda(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapTuda1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapTuda2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapTuda3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }
}
