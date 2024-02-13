import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';

class K15Screen extends StatelessWidget {
  const K15Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: Container(
          width: 365.h,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 22.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCloseBlack90001,
                height: 13.v,
                width: 17.h,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 53.v),
              Padding(
                padding: EdgeInsets.only(left: 35.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "My profile\r",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.v),
              Padding(
                padding: EdgeInsets.only(left: 34.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Your reports\r",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 35.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.only(bottom: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "History",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(left: 35.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "Messages",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(left: 35.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchBlueGray700,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "Settings",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
