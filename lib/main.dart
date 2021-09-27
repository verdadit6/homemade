import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/auth/homemade_welcome_page.dart';

void main() {
  return runApp(HomeMadeApp());
}

class HomeMadeApp extends StatelessWidget {
  const HomeMadeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: ColorUtilities.primaryColor,
      home: HomemadeWelcomePage(),
    );
  }
}
