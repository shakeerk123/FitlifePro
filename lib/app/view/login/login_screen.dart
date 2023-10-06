import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/app/view/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../utils/color.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/common_widgets/gradientShade.dart';
import '../../../widgets/register_widgets/textformfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Form(
            // Wrap the TextFields with a Form widget
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
                const TextFieldWidget(
                  prefixicon: Icon(IconlyLight.message),
                  text: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFieldWidget(
                  prefixicon: const Icon(IconlyLight.lock),
                  text: 'Password',
                  obscureText: _isObscure,
                  suffixicon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color:
                          Colors.grey, // You can customize the icon color here.
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure; // Toggle password visibility.
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: (){
                    print("ddd");
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
                    onPressed: () {},
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
                        Get.to(const HomeScreen());
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
