import 'package:get/get.dart';


import 'consts/app_assets.dart';
import 'features/home_screen/home_screen.dart';

final List bodyScreens = [

  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
].obs;
List bottomNavBarData = [
  {'icon': AppAssets.home, 'label': 'home'.tr, 'active': AppAssets.home},
  {'icon': AppAssets.offer, 'label': 'offer'.tr, 'active': AppAssets.offer},
  {'icon': AppAssets.help, 'label': 'help'.tr, 'active': AppAssets.help},
  {
    'icon': AppAssets.setting,
    'label': 'settings'.tr,
    'active': AppAssets.setting
  },
];
const String apiKey='3062138b73f3537d2f7dad556ee542e5';