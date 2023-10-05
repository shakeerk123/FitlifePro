import 'package:fitness_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../utils/text_constanst.dart';

class GenderDropdownFormField extends StatefulWidget {
  const GenderDropdownFormField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderDropdownFormFieldState createState() =>
      _GenderDropdownFormFieldState();
}

class _GenderDropdownFormFieldState extends State<GenderDropdownFormField> {
  String? _selectedGender;

  final List<String> _genderOptions = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        decoration: BoxDecoration(
             color: FitnessAppColors.box, borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(5.0),
        child: DropdownButtonFormField<String>(
          icon: const Icon(IconlyLight.arrow_down_2),
          value: _selectedGender,
          onChanged: (String? newValue) {
            setState(() {
              _selectedGender = newValue;
            });
          },
          items: _genderOptions.map((String gender) {
            return DropdownMenuItem<String>(
              
              value: gender,
              child: Text(gender,style: FontConstants.small,),
              
            );
          }).toList(),
          decoration: const InputDecoration(
            labelText: 'Gender', labelStyle: FontConstants.smallthin,
            hintText: 'Select Gender', hintStyle: FontConstants.smallthin,
            icon: Icon(IconlyLight.user), // Optional prefix icon
          ),
        ),
      ),
    );
  }
}
