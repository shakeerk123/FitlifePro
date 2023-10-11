import 'package:fitness_app/app/view/login/controller/login_controller.dart';
import 'package:fitness_app/app/view/register/view/register_page1.dart';
import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../utils/color.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/gradientShade.dart';
import '../../../widgets/register_widgets/textformfield_widget.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
          key: controller.formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Hey there,",
                          style: FontConstants.thickThin,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome Back,",
                          style: FontConstants.name,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 TextFieldWidget(
                  validator: (value) {
                    return controller.validateEmail(value!);
                  },
                  controller: controller.passwordContoller,
                  onSaved: (value) {
                    controller.email = value!;
                  },
                  prefixicon: Icon(IconlyLight.message),
                  text: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                 TextFieldWidget(
                      validator: (value) {
                        return controller.validatePassword(value!);
                      },
                      controller: controller.emailController,
                      onSaved: (value) {
                        controller.password = value!;
                      },
                      prefixicon: const Icon(IconlyLight.lock),
                      text: 'Password',
                      obscureText: controller.isPasswordHidden.value,
                      suffixicon: InkWell(
                        child: Icon(controller.isPasswordHidden.value ?
                          Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          controller.isPasswordHidden.value =
                              !controller.isPasswordHidden.value;
                        },
                      ),
                    ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: (){
                  },
                  child: const Text(
                    "Forgot your password?",
                    style: FontConstants.smallthin,
                  ),
                ),
                const SizedBox(
                  height: 140,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: FitnessAppColors
                          .logoColor, // Background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(70), // Rounded border
                      ),
                    ),
                    onPressed: () {
                      controller.checkLogin();
                    },
                    child: const Text(
                      "Login",
                      style: FontConstants.smallthinBold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Or",
                  style: FontConstants.skip,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  radius: 20,
                  onTap: () {},
                  child: Image.asset(
                    AppPaths.google,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account yet?",
                      style: FontConstants.title,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const RegisterScreen());
                      },
                      child: const GradientShade(
                        color1: FitnessAppColors.logoColor3,
                        color2: FitnessAppColors.logoColor4,
                        gradientText: ' Register',
                        style: FontConstants.title2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
