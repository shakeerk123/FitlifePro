import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  final formKey = GlobalKey<FormState>();

  late TextEditingController firstNameController,lastNameController,emailController,passwordContoller;
  var email="";
  var password="";
  var firstName="";
  var lastNmae="";

  @override
  void onInit(){

    super.onInit();

    emailController = TextEditingController();
    passwordContoller = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
  }

  @override
  void onClose(){
    emailController.dispose();
    passwordContoller.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
  }

  String? validateEmail(String value){
    if(!GetUtils.isEmail(value)){
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value){
    if(value.length < 6){
      return "Pasword must be od 6 characters";
    }
    return null;
  }


  void checkLogin(){
    final isValid = formKey.currentState!.validate();
    if(!isValid){
      return;
    }
    formKey.currentState!.save();
  }

}