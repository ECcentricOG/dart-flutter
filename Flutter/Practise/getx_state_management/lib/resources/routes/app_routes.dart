import 'package:get/get.dart';
import 'package:getx_state_management/models/user.dart';
import 'package:getx_state_management/resources/routes/route_name.dart';
import 'package:getx_state_management/screens/home_screen.dart';
import 'package:getx_state_management/screens/login_screen.dart';
import 'package:getx_state_management/screens/post_screen.dart';
import 'package:getx_state_management/screens/profile_screen.dart';
import 'package:getx_state_management/screens/search_screen.dart';
import 'package:getx_state_management/screens/signup_page.dart';

class AppRoutes {
  User? user;
  AppRoutes(this.user);
  static getRoutes() => [
        GetPage(
          name: RouteName.homeScreen,
          page: () => const HomeScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        GetPage(
          name: RouteName.signupScreen,
          page: () => const SignUpPage(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        GetPage(
          name: RouteName.searchScreen,
          page: () => const SearchScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        GetPage(
          name: RouteName.postScreen,
          page: () => const PostScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        GetPage(
          name: RouteName.profileScreen,
          page: () => const ProfileScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 300),
        ),
      ];
}
