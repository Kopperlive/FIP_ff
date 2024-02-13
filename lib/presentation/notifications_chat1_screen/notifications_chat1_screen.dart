import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/appbar_title.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NotificationsChat1Screen extends StatelessWidget {
  NotificationsChat1Screen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildDescriptionSection(context),
                  SizedBox(height: 21.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildNotificationsChatSection(context)))
                ]))));
  }

  /// Section Widget
  Widget _buildDescriptionSection(BuildContext context) {
    return SizedBox(
        height: 309.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 17.h, right: 68.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 260.h,
                                margin: EdgeInsets.only(left: 48.h),
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                decoration: AppDecoration.fillWhiteA70001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 227.h,
                                          margin: EdgeInsets.only(right: 12.h),
                                          child: Text(
                                              "Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall!
                                                  .copyWith(height: 1.50))),
                                      SizedBox(height: 8.v),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Text("16.04",
                                              style: CustomTextStyles
                                                  .bodySmallBluegray300))
                                    ]))),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(right: 56.h),
                            child: Row(children: [
                              Container(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  margin: EdgeInsets.only(top: 164.v),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage40x40,
                                            height: 40.adaptSize,
                                            width: 40.adaptSize,
                                            radius: BorderRadius.circular(20.h),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.amber300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h),
                                                    border: Border.all(
                                                        color: appTheme.gray50,
                                                        width: 2.h))))
                                      ])),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle,
                                            height: 100.v,
                                            width: 204.h,
                                            radius: BorderRadius.circular(4.h)),
                                        SizedBox(height: 4.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle100x100,
                                                      height: 100.adaptSize,
                                                      width: 100.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              4.h),
                                                      margin: EdgeInsets.only(
                                                          right: 2.h))),
                                              Expanded(
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle1,
                                                      height: 100.adaptSize,
                                                      width: 100.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              4.h),
                                                      margin: EdgeInsets.only(
                                                          left: 2.h)))
                                            ])
                                      ])))
                            ]))
                      ]))),
          CustomAppBar(
              height: 188.v,
              leadingWidth: 37.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftBlack900,
                  margin: EdgeInsets.only(left: 19.h, top: 72.v, bottom: 29.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              title: Padding(
                  padding: EdgeInsets.only(left: 11.h, top: 56.v, bottom: 13.v),
                  child: Column(children: [
                    Row(children: [
                      SizedBox(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage,
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    radius: BorderRadius.circular(24.h),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 36.h, top: 36.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.amber300,
                                            borderRadius:
                                                BorderRadius.circular(6.h),
                                            border: Border.all(
                                                color: appTheme.gray50,
                                                width: 2.h))))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 10.h, top: 2.v, bottom: 3.v),
                          child: Column(children: [
                            AppbarTitle(text: "Chief Accountant"),
                            SizedBox(height: 2.v),
                            AppbarSubtitleOne(
                                text: "Inactive",
                                margin: EdgeInsets.only(right: 99.h))
                          ]))
                    ])
                  ])),
              actions: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: SizedBox(
                        height: 117.v,
                        child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.black900,
                            indent: 72.h,
                            endIndent: 29.h)))
              ],
              styleType: Style.bgFill_1),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 204.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
                  decoration: AppDecoration.fillGray,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 42.adaptSize,
                            width: 42.adaptSize,
                            margin: EdgeInsets.only(top: 35.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
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
                            padding: EdgeInsets.only(
                                left: 13.h, top: 46.v, bottom: 6.v),
                            child: Text("Turdieva Dilnaza Dilmuratovna",
                                style: theme.textTheme.bodyLarge))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildNotificationsChatSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 5.v),
                        decoration: AppDecoration.fillBlueA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.v),
                              SizedBox(
                                  width: 171.h,
                                  child: Text(
                                      "That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA70001_1
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 4.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("16.04",
                                      style: CustomTextStyles
                                          .bodySmallWhiteA70001_1))
                            ])),
                    Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.only(
                            left: 10.h, top: 35.v, bottom: 18.v),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.green500,
                                      borderRadius: BorderRadius.circular(6.h),
                                      border: Border.all(
                                          color: appTheme.gray50, width: 2.h))))
                        ]))
                  ]))),
          SizedBox(height: 22.v),
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(children: [
                Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(top: 9.v),
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage40x40,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          radius: BorderRadius.circular(20.h),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.amber300,
                                  borderRadius: BorderRadius.circular(5.h),
                                  border: Border.all(
                                      color: appTheme.gray50, width: 2.h))))
                    ])),
                Container(
                    margin: EdgeInsets.only(left: 7.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v),
                    decoration: AppDecoration.fillWhiteA70001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL8),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Text("Please, confirm your reports!",
                              style: theme.textTheme.bodySmall),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 3.h),
                                  child: Text("18:31",
                                      style: CustomTextStyles
                                          .bodySmallBluegray300)))
                        ]))
              ])),
          SizedBox(height: 29.v),
          CustomTextFormField(
              controller: messageController,
              hintText: "Write a message...",
              textInputAction: TextInputAction.done,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(25.h, 16.v, 16.h, 30.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUserYellow900,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 86.v),
              suffix: Container(
                  padding: EdgeInsets.all(8.h),
                  margin: EdgeInsets.fromLTRB(30.h, 8.v, 25.h, 8.v),
                  decoration: BoxDecoration(
                      color: appTheme.yellow900,
                      borderRadius: BorderRadius.circular(20.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrameWhiteA70001,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 86.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
