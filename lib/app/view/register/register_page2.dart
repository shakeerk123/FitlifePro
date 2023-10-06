import 'package:fitness_app/utils/path_constants.dart';
import 'package:fitness_app/app/view/register/register_page1.dart';
import 'package:fitness_app/widgets/register_widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../../utils/color.dart';
import '../../../utils/text_constanst.dart';

class RegisterPageTwo extends StatelessWidget {
  const RegisterPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.asset(
                    
                    AppPaths.registerImage),
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Let's complete your profile",
                  style: FontConstants.namesmallSize,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  TextConstants.registerMessage,
                  style: FontConstants.smallthin,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldWidget(
                    prefixicon: Icon(IconlyLight.calendar),
                    text: "Your Age",
                    keyboardType: TextInputType.number ,),
                    
                const TextFieldWidget(
                    prefixicon: Icon(Icons.height), text: "Your Weight in Kg",keyboardType: TextInputType.number,),
                const TextFieldWidget(
                    prefixicon: Icon(IconlyLight.swap),
                    text: "Your Height in cm",keyboardType: TextInputType.number,),
                    const SizedBox(height: 20,),
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
                        borderRadius: BorderRadius.circular(70), // Rounded border
                      ),
                    ),
                    onPressed: () {
                      Get.to(const RegisterScreen());
                    },
                    child: const Text(
                      "Next",
                      style: FontConstants.smallthinBold,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
