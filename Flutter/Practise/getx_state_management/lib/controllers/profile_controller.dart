import 'package:get/get.dart';
import 'package:getx_state_management/models/user.dart';

class ProfileController extends GetxController {
  User user = Get.arguments["user"];
}
