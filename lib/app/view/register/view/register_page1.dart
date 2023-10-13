
// import 'package:fitness_app/app/view/login/login_screen.dart';
// import 'package:fitness_app/app/view/register/controller/register_con.dart';
// import 'package:fitness_app/utils/path_constants.dart';
// import 'package:fitness_app/app/view/home/homepage.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconly/iconly.dart';

// import '../../../../utils/color.dart';
// import '../../../../utils/text_constanst.dart';
// import '../../../../widgets/common_widgets/gradientShade.dart';
// import '../../../../widgets/register_widgets/textformfield_widget.dart';

// class RegisterScreen extends GetView<> {
//   const RegisterScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//    // AuthController authController = Get.find<AuthController>();
//     return SafeArea(
//       child: Scaffold(
//         body: ListView(children: [
//           Obx(
//             ()=> Form(
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//            //   key: authController.registrationFormKey,
//               // Wrap the TextFields with a Form widget
//               child: Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(top: 60.0),
//                     child: Center(
//                       child: Column(
//                         children: [
//                           Text(
//                             "Hey there,",
//                             style: FontConstants.thickThin,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "Create an Account,",
//                             style: FontConstants.name,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   TextFieldWidget(
//                     validator: (value) {
//                       return controller.validateFirstName(value!);
//                     },
//                     controller: controller.firstNameController,
//                     onSaved: (value) {
//                       controller.firstName = value!;
//                     },
//                     prefixicon: Icon(IconlyLight.profile),
//                     text: 'First Name',
//                   ),
//                   TextFieldWidget(
//                     validator: (value) {
//                       return controller.validateLastName(value!);
//                     },
//                     controller: controller.lastNameController,
//                     onSaved: (value) {
//                       controller.lastName = value!;
//                     },
//                     prefixicon: Icon(IconlyLight.profile),
//                     text: 'Last Name',
//                   ),
//                   TextFieldWidget(
//                     validator: (value) {
//                       return controller.validateEmail(value!);
//                     },
//                     controller: controller.passwordContoller,
//                     onSaved: (value) {
//                       controller.email = value!;
//                     },
//                     prefixicon: Icon(IconlyLight.message),
//                     text: 'Email',
//                     keyboardType: TextInputType.emailAddress,
//                   ),
//                    TextFieldWidget(
//                         validator: (value) {
//                           return controller.validatePassword(value!);
//                         },
//                         controller: controller.emailController,
//                         onSaved: (value) {
//                           controller.password = value!;
//                         },
//                         prefixicon: const Icon(IconlyLight.lock),
//                         text: 'Password',
//                         obscureText: controller.isPasswordHidden.value,
//                         suffixicon: InkWell(
//                           child: Icon(controller.isPasswordHidden.value ?
//                             Icons.visibility : Icons.visibility_off,
//                             color: Colors.grey,
//                           ),
//                           onTap: () {
//                             controller.isPasswordHidden.value =
//                                 !controller.isPasswordHidden.value;
//                           },
//                         ),
//                       ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 25),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(70),
//                     ),
//                     width: double.infinity,
//                     height: 60,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: FitnessAppColors
//                             .logoColor, // Background color of the button
//                         shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(70), // Rounded border
//                         ),
//                       ),
//                       onPressed: () {
//                         authController.checkRegister();
//                         print(
//                           controller.password,
//                         );
//                         print(
//                           controller.email,
//                         );
//                       },
//                       child: const Text(
//                         "Register",
//                         style: FontConstants.smallthinBold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text(
//                     "Or",
//                     style: FontConstants.skip,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   InkWell(
//                     radius: 20,
//                     onTap: () {},
//                     child: Image.asset(
//                       AppPaths.google,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         "Already have an account ?",
//                         style: FontConstants.title,
//                       ),
//                       InkWell(
//                         onTap: () {
//                            Get.to(() => LoginScreen());
//                         },
//                         child: const GradientShade(
//                           color1: FitnessAppColors.logoColor3,
//                           color2: FitnessAppColors.logoColor4,
//                           gradientText: ' Login',
//                           style: FontConstants.title2,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
