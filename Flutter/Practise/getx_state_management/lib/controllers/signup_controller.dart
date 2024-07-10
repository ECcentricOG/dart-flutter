import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/data/response/status.dart';
import 'package:getx_state_management/models/user.dart';
import 'package:getx_state_management/repository/signup_repository.dart';

class SignUpControllers extends GetxController {
  Rx<TextEditingController> username = TextEditingController().obs;
  Rx<TextEditingController> password = TextEditingController().obs;
  Rx<TextEditingController> fullName = TextEditingController().obs;
  Rx<TextEditingController> email = TextEditingController().obs;
  final requestStatus = Status.loading.obs;
  Rx<User> user = User().obs;
  RxBool isPassword = true.obs;

  final formKey = GlobalKey<FormState>().obs;

  final _api = SignUpRepository();

  signUpUser() async {
    await _api.registerUser({
      "userFullName": fullName.value.text,
      "userName": username.value.text,
      "userPassword": password.value.text,
      "userEmail": email.value.text
    }).then((value) {
      user.value = value;
      requestStatus.value = Status.completed;
    }).onError((error, stackTrace) {
      requestStatus.value = Status.error;
    });
  }
}
