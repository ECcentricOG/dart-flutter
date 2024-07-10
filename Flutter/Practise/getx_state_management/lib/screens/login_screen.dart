import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/login_controller.dart';
import 'package:getx_state_management/data/response/status.dart';
import 'package:getx_state_management/resources/routes/route_name.dart';
import 'package:getx_state_management/resources/widgets/input_text_field.dart';
import 'package:getx_state_management/resources/widgets/press_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginControllers loginControllers = Get.put(LoginControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.black,
        width: Get.width,
        child: Form(
          key: loginControllers.formKey.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                height: Get.height / 2.5,
              ),
              InputTextField(
                isPassword: false,
                controller: loginControllers.username.value,
                label: "Username",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username cannot be empty";
                  }
                  return null;
                },
                prefixIcon: const Icon(Icons.person),
                suffix: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    loginControllers.username.value.clear();
                  },
                ),
                width: Get.width / 1.2,
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => InputTextField(
                  isPassword: loginControllers.isPassword.value,
                  controller: loginControllers.password.value,
                  label: "password",
                  validator: (value) {
                    if (value!.length < 8) {
                      return "Password at least contain 8 characters";
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.lock),
                  suffix: IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      loginControllers.isPassword.value =
                          !loginControllers.isPassword.value;
                    },
                  ),
                  width: Get.width / 1.2,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              PressButton(
                height: 45,
                width: Get.width / 2,
                buttonName: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPress: () async {
                  loginControllers.formKey.value.currentState!.validate();
                  await loginControllers.userLogin();
                  if (loginControllers.requestStatus.value ==
                      Status.completed) {
                    Get.toNamed(
                      RouteName.homeScreen,
                      arguments: {
                        "user": loginControllers.user.value,
                      },
                    );
                  } else {
                    Get.snackbar("User not found", "Some thing went wrong");
                  }
                },
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.signupScreen);
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
