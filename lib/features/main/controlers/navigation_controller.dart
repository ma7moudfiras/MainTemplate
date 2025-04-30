import 'package:get/get.dart';
import 'package:palventure/features/main/screens/alerts/alerts.dart';
import 'package:palventure/features/main/screens/explore/explore.dart';
import 'package:palventure/features/main/screens/home/home.dart';
import 'package:palventure/features/main/screens/profile/profile.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const AlertsScreen(),
    const ProfileScreen(),
  ];
}
