import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class LearnmoreaboutfinancialliteracItemWidget extends StatelessWidget {
  LearnmoreaboutfinancialliteracItemWidget({
    Key? key,
    this.onTapText,
  }) : super(
          key: key,
        );

  VoidCallback? onTapText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 201.v,
        width: 392.h,
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillGray100,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 1.h,
                child: Text(
                  "Learn more about financial literacy",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeWhiteA70001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 168.v,
                width: 357.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 168.v,
                        width: 358.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 166.v,
                                    width: 321.h,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 166.v,
                                            width: 321.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.blueGray900,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(right: 152.h),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 22.h,
                                              vertical: 16.v,
                                            ),
                                            decoration:
                                                AppDecoration.fillCyan.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderBL150,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 123.h,
                                                  child: Text(
                                                    "How to use Omnicomm?",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .titleLargeWhiteA70001,
                                                  ),
                                                ),
                                                SizedBox(height: 6.v),
                                                CustomElevatedButton(
                                                  height: 22.v,
                                                  width: 88.h,
                                                  text: "Learn more ",
                                                  margin: EdgeInsets.only(
                                                      left: 15.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineBlackTL11,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .bodySmallWhiteA70001,
                                                  onPressed: () {
                                                    onTapText!.call();
                                                  },
                                                ),
                                                SizedBox(height: 34.v),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 166.v,
                                    width: 321.h,
                                    margin: EdgeInsets.only(left: 25.h),
                                    decoration: BoxDecoration(
                                      color: appTheme.greenA700,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgOmniDemoDay1,
                              height: 165.v,
                              width: 129.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 60.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle34,
                      height: 166.v,
                      width: 12.h,
                      alignment: Alignment.centerRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle31,
                      height: 22.v,
                      width: 2.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 32.v),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
