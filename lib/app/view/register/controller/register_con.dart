// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controller/globalform.dart/global.dart';

// class RegisterController extends GetxController {
//   var isPasswordHidden = true.obs;

//   late TextEditingController firstNameController,
//       lastNameController,
//       emailController,
//       passwordContoller;
//   var email = "";
//   var password = "";
//   var firstName = "";
//   var lastName = "";

//   @override
//   void onInit() {
//     super.onInit();
  
//     emailController = TextEditingController();
//     passwordContoller = TextEditingController();
//     firstNameController = TextEditingController();
//     lastNameController = TextEditingController();
    
//   }

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordContoller.dispose();
//     firstNameController.dispose();
//     lastNameController.dispose();
//   }

//   String? validateFirstName(String value) {
//   if (value.isEmpty) {
//     return "First name is required";
//   }

//   if (value.length < 2) {
//     return "First name must be at least 2 characters long";
//   }

//   if (value.length > 9) {
//     return "First name cannot exceed 9 characters";
//   }

//   if (!RegExp(r"^[a-zA-Z'-]+$").hasMatch(value)) {
//     return "Invalid characters in first name";
//   }

//   return null;
// }

// String? validateLastName(String value) {
//   if (value.isEmpty) {
//     return "Last name is required";
//   }

//   if (value.length < 2) {
//     return "Last name must be at least 2 characters long";
//   }

//   if (value.length > 9) {
//     return "Last name cannot exceed 9 characters";
//   }

//   if (!RegExp(r"^[a-zA-Z'-]+$").hasMatch(value)) {
//     return "Invalid characters in last name";
//   }

//   return null;
// }



//   String? validateEmail(String value) {
//     final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

//     if (!emailRegExp.hasMatch(value)) {
//       return "Provide a valid Email";
//     }
//     if (!value.endsWith('@gmail.com')) {
//       return "Only Gmail addresses are allowed";
//     }

//     return null;
//   }

//   String? validatePassword(String value) {
//     if (value.length < 6) {
//       return "Password must be of 6 characters";
//     }
//     return null;
//   }

//   void checkLogin() {
//     final isValid = formKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     formKey.currentState!.save();
//   }

   

// }
