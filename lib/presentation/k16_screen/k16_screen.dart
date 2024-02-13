import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_switch.dart';

class K16Screen extends StatelessWidget {
  K16Screen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: Container(
          width: 294.h,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "Full name",
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "name.gmail.com",
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 11.v),
              Divider(),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLockBlueGray900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "My profile",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchBlueGray900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Settings",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              _buildMobile(context),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserBlueGray900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "Guide & Tutorials ",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Help center",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLockRed900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Log out",
                        style: CustomTextStyles.titleMediumRed900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMobile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 30.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 2.v,
            ),
            child: Text(
              "Dark Mode",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }
}
