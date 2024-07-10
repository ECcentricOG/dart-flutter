import 'package:get/get.dart';
import 'package:getx_state_management/resources/routes/route_name.dart';

class NavBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  navigateToScreen(int index) {
    Get.toNamed(goScreens[index]);
  }

  List goScreens = [
    RouteName.homeScreen,
    RouteName.searchScreen,
    RouteName.postScreen,
    RouteName.profileScreen,
  ].obs;
}
