import 'package:flutter/material.dart';
import 'package:satujuta_app_mobile/app/const/app_assets.dart';
import 'package:satujuta_app_mobile/app/theme/app_colors.dart';
import 'package:satujuta_app_mobile/app/theme/app_text_style.dart';
import 'package:satujuta_app_mobile/view/register/components/reg_commission.dart';
import 'package:satujuta_app_mobile/view/settings_sreen/edit_profile_view.dart';

import '../../app/const/app_consts.dart';
import '../../app/const/app_sizes.dart';
import '../../app/widget/app_button.dart';
import '../../app/widget/app_expansion_list_tile.dart';
import '../../app/widget/my_custom_text.dart';
import '../../app/widget/my_icon_button.dart';
import '../../app/widget/my_separated.dart';
import '../molecules/referral_Invitation/circle_user.dart';
import '../molecules/referral_Invitation/my_invite_button.dart';
import '../molecules/referral_Invitation/my_text_line.dart';

class ReferralDetailView extends StatefulWidget {
  final PageStateEnum pageState;
  const ReferralDetailView({Key? key, required this.pageState}) : super(key: key);

  static const String viewAsMeRouteName = '/my-referral-detail';

  const ReferralDetailView.viewAsMe({
    Key? key,
    this.pageState = PageStateEnum.viewAsMe,
  }) : super(key: key);

  @override
  State<ReferralDetailView> createState() => _ReferralDetailViewState();
}

class _ReferralDetailViewState extends State<ReferralDetailView> with TickerProviderStateMixin {
  late TabController tabController;
  bool isShow = true;
  int a = 3;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(tabListener);
  }

  void tabListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
          'Detail Profil',
          style: AppTextStyle.bold(context, fontSize: 18),
        ),
        editProfileButton(),
      ],
    );
  }

  Widget backButton() {
    return AppIconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icons.arrow_back_ios_rounded,
      iconSize: 18,
      iconColor: AppColors.base,
      backgroundColor: AppColors.white,
      padding: const EdgeInsets.all(AppSizes.padding / 2),
    );
  }

  Widget editProfileButton() {
    return AppIconButton(
      onPressed: () {
        Navigator.pushNamed(context, EditProfileView.routeName);
      },
      icon: CustomIcon.edit_icon,
      iconSize: 18,
      iconColor: AppColors.base,
      backgroundColor: AppColors.white,
      padding: const EdgeInsets.all(AppSizes.padding / 2),
    );
  }

  SliverAppBar sliverAppBarWidget() {
    return SliverAppBar(
      backgroundColor: AppColors.baseLv7,
      automaticallyImplyLeading: false,
      expandedHeight: 420,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            appBar(),
            background(),
          ],
        ),
        expandedTitleScale: 1,
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSizes.padding),
      child: Column(
        children: [
          wrapMyRefCode(),
          countMemberAndTask(),
          wrapInviteFriend(),
          tabBar(),
          tabBarViews(),
        ],
      ),
    );
  }

  Widget background() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 44,
            bottom: 169,
            child: Container(
              width: 619,
              height: 619,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(55, 114, 255, 0.05),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: AppSizes.padding * 4,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  maxRadius: 80,
                  backgroundImage: AssetImage(
                    AppAssets.userImage1Path,
                  ),
                ),
                const SizedBox(
                  height: AppSizes.height * 2,
                ),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: AppButton(
                    onTap: () {
                      // TODO
                    },
                    text: '50 Poin',
                    fontSize: 12,
                    leftIcon: CustomIcon.coin_icon,
                    buttonColor: AppColors.yellow,
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.padding / 4,
                      horizontal: AppSizes.padding / 2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.height * 2,
                ),
                Text(
                  'Agus Susanto',
                  style: AppTextStyle.bold(
                    context,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget wrapMyRefCode() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            AppSizes.radius * 2,
          )),
      child: Container(
        margin: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                padding: EdgeInsets.all(AppSizes.padding / 2),
                decoration: BoxDecoration(
                    color: AppColors.baseLv7,
                    borderRadius: BorderRadius.circular(
                      AppSizes.radius * 2,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.padding / 1.5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'UHND14145',
                            style: AppTextStyle.bold(
                              context,
                              fontSize: 16,
                              color: AppColors.base,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            CustomIcon.copy_document,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Bergabung Sejak 23 Mei 2023',
                        style: AppTextStyle.regular(context, color: AppColors.baseLv5, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppSizes.padding / 1.5,
            ),
            Text(
              'Diinvite Oleh Budi Susanto',
              style: AppTextStyle.regular(context, color: AppColors.baseLv5, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget countMemberAndTask() {
    return Container(
      height: 170,
      margin: const EdgeInsets.symmetric(vertical: AppSizes.padding),
      child: Row(
        children: [
          Expanded(child: countMember()),
          const SizedBox(width: AppSizes.padding / 1.2),
          taskTotal(),
        ],
      ),
    );
  }

  Widget wrapInviteFriend() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radius * 2),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Container(
          child: Column(
            children: [
              MyTextLine(
                title: MyCustomText(
                  text: 'Undang Teman Anda',
                  style: AppTextStyle.bold(context, color: AppColors.base, fontSize: 20),
                ),
                gap: 8,
                subTitle: MyCustomText(
                  text: 'Lorem ipsum dolor sit amet, consectetur',
                  style: AppTextStyle.regular(context, color: AppColors.baseLv5, fontSize: 14),
                ),
              ),
              MySeparated(sizeWidth: 0, sizeHeight: 8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.padding),
                child: MyInviteButton(
                  functionButton: () {},
                  leadingButton: CircleUser(
                    imageFriend1: AppAssets.userImage1Path,
                    imageFriend2: AppAssets.userImage2Path,
                    imageFriend3: AppAssets.userImage3Path,
                    countFriend: '9',
                  ),
                  textButton: 'Undang Lebih Banyak',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget tabBar() {
    return Container(
      margin: EdgeInsets.only(
        top: AppSizes.padding,
        bottom: AppSizes.padding * 1.5,
      ),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.baseLv6,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TabBar(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        labelColor: AppColors.base,
        indicator: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.poinIconPath,
                  scale: 2.0,
                ),
                const SizedBox(width: AppSizes.padding / 3),
                Flexible(
                  child: Text(
                    "Poin",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.bold(context, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.contactGroupIconPath,
                  scale: 2.0,
                ),
                const SizedBox(width: AppSizes.padding / 3),
                Flexible(
                  child: Text(
                    "Komisi",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.bold(context, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.contactGroupIconPath,
                  scale: 2.0,
                ),
                const SizedBox(width: AppSizes.padding / 3),
                Flexible(
                  child: Text(
                    "Reward",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.bold(context, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tabBarViews() {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: tabController.index == 0
            ? poinItems()
            : tabController.index == 1
                ? RegCommission()
                : rewardItems());
  }

  Widget rewardItems() {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.padding * 2),
      child: AppExpansionListTile(
        title: 'Riwayat Penerimaan Hadiah',
        icon: Icons.access_time_sharp,
        expand: true,
        children: [
          ...List.generate(a, (i) {
            return rewardItemCard(i);
          }),
          showButton(() {
            setState(() {
              isShow ? a = 5 : a = 3;
              isShow ? isShow = false : isShow = true;
            });
          }),
        ],
      ),
    );
  }

  Widget poinItems() {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.padding * 2),
      child: AppExpansionListTile(
        title: 'Riwayat Poin',
        icon: Icons.access_time_sharp,
        expand: true,
        children: [
          ...List.generate(a, (i) {
            return poinItemCard(i);
          }),
          showButton(() {
            setState(() {
              isShow ? a = 5 : a = 3;
              isShow ? isShow = false : isShow = true;
            });
          }),
        ],
      ),
    );
  }

// ===========

  Widget rewardItemCard(int i) {
    return Container(
      margin: EdgeInsets.only(bottom: i == 5 ? 0 : AppSizes.padding / 4),
      padding: const EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: AppColors.baseLv8,
                        ),
                      ),
                      child: const Icon(
                        Icons.wallet_giftcard_rounded,
                        color: AppColors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: AppSizes.padding / 2),
                    Text(
                      i == 0 ? 'Tiket Ke Singapore' : 'Tiket Ke Turkey',
                      style: AppTextStyle.extraBold(
                        context,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.padding / 4),
          Container(
            padding: EdgeInsets.all(AppSizes.padding / 2.7),
            child: Row(
              children: [
                Icon(
                  Icons.access_time_sharp,
                  size: 15,
                  color: AppColors.baseLv4,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '1 Tahun Yang lalu',
                  style: AppTextStyle.regular(
                    context,
                    fontSize: 12,
                    color: AppColors.baseLv4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget poinItemCard(int i) {
    return Container(
      margin: EdgeInsets.only(bottom: i == 5 ? 0 : AppSizes.padding / 4),
      padding: const EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppColors.yellow,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: AppColors.baseLv8,
                        ),
                      ),
                      child: const Icon(
                        CustomIcon.coin_icon,
                        color: AppColors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: AppSizes.padding / 2),
                    Text(
                      i == 0 ? 'Undang Referral' : 'Mengundang Member Baru',
                      style: AppTextStyle.extraBold(
                        context,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(AppSizes.padding / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_time_sharp,
                      size: 15,
                      color: AppColors.baseLv4,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '20/7/2023',
                      style: AppTextStyle.regular(
                        context,
                        fontSize: 12,
                        color: AppColors.baseLv4,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.padding / 2,
                    vertical: AppSizes.padding / 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '+1 Point',
                    style: AppTextStyle.bold(
                      context,
                      fontSize: 12,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showButton(dynamic functionButton) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.padding / 1.5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: ElevatedButton(
        onPressed: functionButton,
        style: ButtonStyle(
          visualDensity: VisualDensity.compact,
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isShow ? 'Tampilkan Semua' : 'Sembunyikan ',
              style: AppTextStyle.bold(context, fontSize: 14, color: AppColors.primary),
            ),
            SizedBox(
              width: AppSizes.height,
            ),
            Icon(
              isShow ? Icons.arrow_downward : Icons.arrow_upward,
              size: AppSizes.height,
              color: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }

  Widget countMember() {
    return Container(
      padding: const EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'JUMLAH\nMEMBER',
                    style: AppTextStyle.bold(
                      context,
                      fontSize: 14,
                      color: AppColors.baseLv4,
                    ),
                  ),
                  const SizedBox(height: AppSizes.padding / 2),
                  Text(
                    '20',
                    style: AppTextStyle.extraBold(
                      context,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: AppSizes.padding / 2),
              AppIconButton(
                onPressed: () {
                  // TODO
                },
                icon: CustomIcon.inventory,
                iconSize: 32,
                backgroundColor: AppColors.baseLv6,
                padding: const EdgeInsets.all(AppSizes.padding / 2),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget taskTotal() {
    return Container(
      padding: const EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIconButton(
            onPressed: () {
              // TODO
            },
            icon: Icons.text_snippet_outlined,
            iconSize: 16,
            backgroundColor: AppColors.baseLv6,
            padding: const EdgeInsets.all(AppSizes.padding / 2),
          ),
          const SizedBox(height: AppSizes.padding / 3),
          Text(
            'TASK',
            style: AppTextStyle.bold(
              context,
              fontSize: 12,
              color: AppColors.base,
            ),
          ),
          const SizedBox(height: AppSizes.padding / 2),
          AppButton(
            onTap: () {
              // TODO
            },
            text: '85.0',
            fontSize: 10,
            rightIcon: Icons.arrow_right_alt_rounded,
            textColor: AppColors.base,
            buttonColor: AppColors.baseLv6,
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.padding / 2,
              horizontal: AppSizes.padding,
            ),
            borderRadius: BorderRadius.circular(AppSizes.radius),
          ),
        ],
      ),
    );
  }

  // =======
}
