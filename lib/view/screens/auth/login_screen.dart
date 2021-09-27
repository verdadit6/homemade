import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/auth/forgot_password.dart';
import 'package:home_made/view/screens/auth/register_screen.dart';
import 'package:home_made/view/screens/home/home.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';
import 'package:home_made/view/widgets/button/custom_elevated_buttons.dart';
import 'package:home_made/view/widgets/button/custom_text_button.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';
import 'package:home_made/view/widgets/other/custom_text_for_auth_screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
Hello!
Welcome to 
homemade App""",
            ),
          ),
          SizedBox(
            height: 50,
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
          Padding(
            padding: const EdgeInsets.only(right: 20.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ForgotPassword();
                    }));
                  },
                  text: "Forgot Password?",
                  decoration: TextDecoration.none,
                ),
              ],
            ),
          ),
          CustomElevatedButtons(
            buttonBackgroundColor: ColorUtilities.primaryColor,
            height: 55,
            width: 370,
            buttonName: "LOG IN",
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Home();
              }));
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return RegisterScreen();
                }));
              },
              text: "I haven't an account",
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
