import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:satujuta_app_mobile/view/settings_sreen/component/settings_password.dart';

import '../../app/const/app_sizes.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../app/widget/my_icon_button.dart';
import 'component/settings_items.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/settings';

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.baseLv7,
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.baseLv7,
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            sliverAppBarWidget(),
          ];
        },
        body: body(),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: title(),
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        backButton(),
        Text(
          'Settings',
          style: AppTextStyle.bold(context, fontSize: 18),
        ),
        moreButton(),
      ],
    );
  }

  Widget backButton() {
    return AppIconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icons.arrow_back,
      iconSize: 18,
      iconColor: AppColors.base,
      backgroundColor: AppColors.white,
      padding: const EdgeInsets.all(AppSizes.padding / 2),
    );
  }

  Widget moreButton() {
    return AppIconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icons.more_horiz,
      iconSize: 18,
      iconColor: AppColors.base,
      backgroundColor: AppColors.white,
      padding: const EdgeInsets.all(AppSizes.padding / 2),
    );
  }

  SliverAppBar sliverAppBarWidget() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            appBar(),
          ],
        ),
        expandedTitleScale: 1,
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding),
      child: Column(
        children: [
          settingListItems(),
          SettingsPassword(),
        ],
      ),
    );
  }

  Widget settingListItems() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppSizes.padding),
      child: Column(
        children: [
          SettingItem(
            icon: Icons.person_outline,
            title: 'Ubah Profile',
            rightButton: IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 20,
              ),
              onPressed: () {
                // TO DO
              },
            ),
          ),
          SizedBox(height: AppSizes.padding / 2),
          SettingItem(
            icon: Icons.person_outline,
            title: 'Notifikasi',
            subTitle: 'Enable system send notification',
            rightButton: IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 20,
              ),
              onPressed: () {
                // TO DO
              },
            ),
          ),
          SizedBox(height: AppSizes.padding / 2),
          SettingItem(
            icon: Icons.person_outline,
            title: 'Tentang',
            subTitle: 'Informasi tentang aplikasi',
            rightButton: IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 20,
              ),
              onPressed: () {
                // TO DO
              },
            ),
          ),
          SizedBox(height: AppSizes.padding / 2),
          SettingItem(
            icon: Icons.person_outline,
            title: 'Logout',
            rightButton: IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 20,
              ),
              onPressed: () {
                // TO DO
              },
            ),
          ),
        ],
      ),
    );
  }
}