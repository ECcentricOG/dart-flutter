import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/data/response/status.dart';
import 'package:getx_state_management/models/user.dart';
import 'package:getx_state_management/repository/login_repository.dart';

class LoginControllers extends GetxController {
  Rx<TextEditingController> username = TextEditingController().obs;
  Rx<TextEditingController> password = TextEditingController().obs;
  RxBool isPassword = true.obs;
  Rx<User> user = User().obs;
  final requestStatus = Status.loading.obs;

  final formKey = GlobalKey<FormState>().obs;

  final _loginApi = LoginRepository();

  userLogin() async {
    await _loginApi.getUserLogin(
      {"userName": username.value.text, "userPassword": password.value.text},
    ).then(
      (value) {
        user.value = value;
        requestStatus.value = Status.completed;
      },
    ).onError(
      (error, stackTrace) {
        print(stackTrace);
        log(error.toString());
        requestStatus.value = Status.error;
      },
    );
  }
}
