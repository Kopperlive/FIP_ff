import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container1_screen/root_menu_container1_screen.dart';
import 'package:hojiakbar_s_app/presentation/report_screen/report_screen.dart';
import 'package:hojiakbar_s_app/presentation/congratulations_window_screen/congratulations_window_screen.dart';
import 'package:hojiakbar_s_app/presentation/how_to_use_omnicomm_screen/how_to_use_omnicomm_screen.dart';
import 'package:hojiakbar_s_app/presentation/notifications_chat_screen/notifications_chat_screen.dart';
import 'package:hojiakbar_s_app/presentation/notifications_chat_one_screen/notifications_chat_one_screen.dart';
import 'package:hojiakbar_s_app/presentation/notifications_chat1_screen/notifications_chat1_screen.dart';
import 'package:hojiakbar_s_app/presentation/settings_screen/settings_screen.dart';
import 'package:hojiakbar_s_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:hojiakbar_s_app/presentation/change_password_screen/change_password_screen.dart';
import 'package:hojiakbar_s_app/presentation/language_screen/language_screen.dart';
import 'package:hojiakbar_s_app/presentation/about_us_screen/about_us_screen.dart';
import 'package:hojiakbar_s_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:hojiakbar_s_app/presentation/k15_screen/k15_screen.dart';
import 'package:hojiakbar_s_app/presentation/k16_screen/k16_screen.dart';
import 'package:hojiakbar_s_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String rootMenuContainerPage = '/root_menu_container_page';

  static const String rootMenuContainer1Screen = '/root_menu_container1_screen';

  static const String reportScreen = '/report_screen';

  static const String congratulationsWindowScreen =
      '/congratulations_window_screen';

  static const String howToUseOmnicommScreen = '/how_to_use_omnicomm_screen';

  static const String notificationsChatScreen = '/notifications_chat_screen';

  static const String notificationsChatOneScreen =
      '/notifications_chat_one_screen';

  static const String notificationsChat1Screen = '/notifications_chat1_screen';

  static const String settingsScreen = '/settings_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String languageScreen = '/language_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String k15Screen = '/k15_screen';

  static const String k16Screen = '/k16_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logInScreen: (context) => LogInScreen(),
    rootMenuContainer1Screen: (context) => RootMenuContainer1Screen(),
    reportScreen: (context) => ReportScreen(),
    congratulationsWindowScreen: (context) => CongratulationsWindowScreen(),
    howToUseOmnicommScreen: (context) => HowToUseOmnicommScreen(),
    notificationsChatScreen: (context) => NotificationsChatScreen(),
    notificationsChatOneScreen: (context) => NotificationsChatOneScreen(),
    notificationsChat1Screen: (context) => NotificationsChat1Screen(),
    settingsScreen: (context) => SettingsScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    languageScreen: (context) => LanguageScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    k15Screen: (context) => K15Screen(),
    k16Screen: (context) => K16Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
