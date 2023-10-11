import 'package:flutter/material.dart';
import 'package:fitness_app/utils/color.dart';
import '../../utils/text_constanst.dart';

class TextFieldWidget extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Icon prefixicon;
  final InkWell? suffixicon;
  final String text;
  final bool? obscureText;
  final void Function(String?)? onSaved;

  const TextFieldWidget({
    Key? key,
    required this.prefixicon,
    required this.text,
    this.suffixicon,
    this.controller,
    this.keyboardType,
    this.obscureText,
    this.validator, this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: FitnessAppColors.box,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextFormField(
          onSaved: onSaved,
          validator: validator, // Use FormFieldValidator<String> type
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: FontConstants.smallthin,
            prefixIcon: prefixicon,
            suffixIcon: suffixicon,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
