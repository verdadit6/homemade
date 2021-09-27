import 'package:flutter/material.dart';

class CustomElevatedButtons extends StatefulWidget {
  final void Function()? onPressed;
  final Color? buttonBackgroundColor;
  final double? height;
  final double? width;
  final String? buttonName;
  CustomElevatedButtons({
    Key? key,
    required this.onPressed,
    this.buttonBackgroundColor,
    this.height,
    this.width,
    this.buttonName,
  }) : super(key: key);

  @override
  _CustomElevatedButtonsState createState() => _CustomElevatedButtonsState();
}

class _CustomElevatedButtonsState extends State<CustomElevatedButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          primary: widget.buttonBackgroundColor,
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.buttonName!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
