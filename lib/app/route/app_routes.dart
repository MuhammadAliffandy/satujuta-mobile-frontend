import 'package:flutter/material.dart';
import 'package:satujuta_app_mobile/view/referral/referral_invitation_view.dart';
import 'package:satujuta_app_mobile/view/settings_sreen/settings_view.dart';
import 'package:satujuta_app_mobile/view/student/student_registration_view.dart';

import '../../view/about/about_view.dart';
import '../../view/checkout/checkout_view.dart';
import '../../view/checkout/student_checkout_view.dart';
import '../../view/dashboard/dashboard_view.dart';
import '../../view/hotel_picker/hotel_picker_view.dart';
import '../../view/hotel_picker/student_hotel_picker_view.dart';
import '../../view/login/login_view.dart';
import '../../view/login/reset_pass_view.dart';
import '../../view/marketing/marketing_gallery_screen.dart';
import '../../view/onboarding/onboarding_view.dart';
import '../../view/payment_status/payment_status.dart';
import '../../view/program_list/program_list_view.dart';
import '../../view/referral/referral_detail_view.dart';
import '../../view/referral/referral_view.dart';
import '../../view/register/register_view.dart';
import '../../view/reward_list/reward_list_view.dart';
import '../../view/settings_sreen/edit_profile_view.dart';
import '../../view/splash/splash_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    SplashView.routeName: (context) => const SplashView(),
    OnboardingView.routeName: (context) => const OnboardingView(),
    LoginView.routeName: (context) => const LoginView(),
    RegisterView.routeName: (context) => const RegisterView(),
    ResetPassView.routeName: (context) => const ResetPassView(),
    HotelPicker.routeName: (context) => const HotelPicker(),
    CheckoutView.routeName: (context) => const CheckoutView(),
    ProgramListView.routeName: (context) => const ProgramListView(),
    RewardListView.routeName: (context) => const RewardListView(),
    PaymentStatusView.successRouteName: (context) => const PaymentStatusView.success(),
    PaymentStatusView.failedRouteName: (context) => const PaymentStatusView.failed(),
    DashboardView.routeName: (context) => const DashboardView(),
    ReferralView.viewAsMeRouteName: (context) => const ReferralView.viewAsMe(),
    ReferralView.viewAsOtherRouteName: (context) => const ReferralView.viewAsOther(),
    ReferralInvitationView.viewAsMeRouteName: (context) => const ReferralInvitationView.viewAsMe(),
    ReferralDetailView.viewAsMeRouteName: (context) => const ReferralDetailView.viewAsMe(),
    SettingsView.routeName: (context) => const SettingsView(),
    EditProfileView.routeName: (context) => const EditProfileView(),
    MarketingGalleryView.routeName: (context) => const MarketingGalleryView(),
    StudentRegistrationView.routeName: (context) => const StudentRegistrationView(),
    StudentHotelPickerView.routeName: (context) => const StudentHotelPickerView(),
    StudentCheckoutView.routeName: (context) => const StudentCheckoutView(),
    AboutView.routeName: (context) => const AboutView(),
  };
}
