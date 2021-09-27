import 'package:flutter/material.dart';
import 'package:home_made/utilities/color_utilities.dart';
import 'package:home_made/view/screens/auth/login_screen.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';
import 'package:home_made/view/widgets/button/custom_elevated_buttons.dart';
import 'package:home_made/view/widgets/button/custom_text_button.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';
import 'package:home_made/view/widgets/other/custom_text_for_auth_screens.dart';
import 'forgot_password.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.screenBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextForAuthScreens(
              text: """
Hey!
Signup to get
started""",
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextfield(
            textFieldFillColor: ColorUtilities.authTextFieldColor,
            hintText: "Name",
            prefixIcon: Icons.person_outline,
            primaryColor: ColorUtilities.primaryColor,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(
            textFieldFillColor: ColorUtilities.authTextFieldColor,
            hintText: "Email Address",
            prefixIcon: Icons.mail_outline,
            primaryColor: ColorUtilities.primaryColor,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(
            textFieldFillColor: ColorUtilities.authTextFieldColor,
            hintText: "Password",
            prefixIcon: Icons.lock_outline,
            primaryColor: ColorUtilities.primaryColor,
            suffixIcon: Icons.remove_red_eye,
          ),
          SizedBox(
            height: 15,
          ),
          CustomElevatedButtons(
            buttonBackgroundColor: ColorUtilities.primaryColor,
            height: 55,
            width: 370,
            buttonName: "REGISTER",
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return HomePage();
              }));
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return LoginScreen();
                }));
              },
              text: "I already have an account",
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
