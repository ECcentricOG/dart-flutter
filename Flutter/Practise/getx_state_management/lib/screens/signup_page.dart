import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/login_controller.dart';
import 'package:getx_state_management/controllers/signup_controller.dart';
import 'package:getx_state_management/data/response/status.dart';
import 'package:getx_state_management/resources/routes/route_name.dart';
import 'package:getx_state_management/resources/widgets/input_text_field.dart';
import 'package:getx_state_management/resources/widgets/press_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpControllers signUpControllers = Get.put(SignUpControllers());
  LoginControllers loginControllers = Get.put(LoginControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.black,
        width: Get.width,
        child: Form(
          key: signUpControllers.formKey.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                height: Get.height / 3.1,
              ),
              InputTextField(
                isPassword: false,
                controller: signUpControllers.fullName.value,
                label: "Full Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Full Name cannot be empty";
                  }
                  return null;
                },
                prefixIcon: const Icon(Icons.man),
                suffix: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    signUpControllers.fullName.value.clear();
                  },
                ),
                width: Get.width / 1.2,
              ),
              const SizedBox(
                height: 8,
              ),
              InputTextField(
                isPassword: false,
                controller: signUpControllers.email.value,
                label: "Email",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email is Invalid";
                  }
                  return null;
                },
                prefixIcon: const Icon(Icons.email),
                suffix: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    signUpControllers.email.value.clear();
                  },
                ),
                width: Get.width / 1.2,
              ),
              const SizedBox(
                height: 8,
              ),
              InputTextField(
                isPassword: false,
                controller: signUpControllers.username.value,
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
                    signUpControllers.username.value.clear();
                  },
                ),
                width: Get.width / 1.2,
              ),
              const SizedBox(
                height: 8,
              ),
              Obx(
                () => InputTextField(
                  isPassword: signUpControllers.isPassword.value,
                  controller: signUpControllers.password.value,
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
                      signUpControllers.isPassword.value =
                          !signUpControllers.isPassword.value;
                    },
                  ),
                  width: Get.width / 1.2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              PressButton(
                height: 45,
                width: Get.width / 2,
                buttonName: Text(
                  "SignUp",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPress: () async {
                  bool isValid =
                      signUpControllers.formKey.value.currentState!.validate();
                  if (isValid) {
                    await signUpControllers.signUpUser();
                    if (signUpControllers.requestStatus.value ==
                        Status.completed) {
                      Get.toNamed(RouteName.loginScreen);
                    }
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
                      "Already have an account? ",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.loginScreen);
                      },
                      child: Text(
                        "Login",
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
