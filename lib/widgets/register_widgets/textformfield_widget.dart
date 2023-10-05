// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fitness_app/utils/color.dart';
import 'package:flutter/material.dart';

import '../../utils/text_constanst.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Icon prefixicon;
  final IconButton? suffixicon;
  final String text;
  final bool? obscureText;
  const TextFieldWidget({
    Key? key,
    required this.prefixicon,
    required this.text, this.suffixicon, this.controller, this.keyboardType, this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: FitnessAppColors.box, // Set the background color to grey
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText:obscureText ?? false ,
          decoration: InputDecoration(
            hintText: text,hintStyle: FontConstants.smallthin,
            prefixIcon: prefixicon, // Icon to be displayed in the leading position
            border: InputBorder.none, 
            suffixIcon: suffixicon,
    
            focusedBorder: OutlineInputBorder(
              // Customize the appearance when the field is focused
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                  color: Colors
                      .transparent), // Make the border transparent
            ),
          ),
        ),
      ),
    );
  }
}
