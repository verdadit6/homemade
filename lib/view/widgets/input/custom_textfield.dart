import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final Color? textFieldFillColor;
  final Color? primaryColor;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  CustomTextfield({
    Key? key,
    this.textFieldFillColor,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 10.0,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: textFieldFillColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: primaryColor,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
