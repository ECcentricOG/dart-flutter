import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_state_management/controllers/navbar_controller.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final NavBarController controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: const Color.fromRGBO(252, 108, 133, 1),
      onTap: (value) {
        controller.selectedIndex.refresh();
        controller.selectedIndex.value = value;
        controller.navigateToScreen(value);
      },
      currentIndex: controller.selectedIndex.value,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_a_photo_outlined,
            color: Colors.blue,
          ),
          label: "Post",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
