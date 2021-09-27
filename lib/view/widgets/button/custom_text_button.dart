import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

class CustomTextButton extends StatelessWidget {
  final String? text;
  final void Function() onPressed;
  final TextDecoration? decoration;
  const CustomTextButton({
    Key? key,
    this.text,
    required this.onPressed,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(
          color: ColorUtilities.primaryColor,
          decoration: decoration,
        ),
      ),
    );
  }
}
