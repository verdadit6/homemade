import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

class CustomTextForAuthScreens extends StatelessWidget {
  final String? text;
  const CustomTextForAuthScreens({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text!,
          style: TextStyle(
            color: ColorUtilities.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 33,
          ),
        ),
      ],
    );
  }
}
