// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controller/globalform.dart/global.dart';

// class LoginController extends GetxController {
  
//   var isPasswordHidden = true.obs;

//   late TextEditingController 
      
//       emailController,
//       passwordContoller;
//   var email = "";
//   var password = "";
  

//   @override
//   void onInit() {
//     super.onInit();
  
//     emailController = TextEditingController();
//     passwordContoller = TextEditingController();
    
    
//   }

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordContoller.dispose();
    
//   }

 





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
