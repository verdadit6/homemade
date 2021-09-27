import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/auth/register_screen.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';
import 'package:home_made/view/widgets/button/custom_elevated_buttons.dart';
import 'package:home_made/view/widgets/button/custom_text_button.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';
import 'package:home_made/view/widgets/other/custom_text_for_auth_screens.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
Oops! 
Forgot Password?""",
            ),
          ),
          SizedBox(
            height: 100,
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
          CustomElevatedButtons(
            buttonBackgroundColor: ColorUtilities.primaryColor,
            height: 55,
            width: 370,
            buttonName: "Forgot Password",
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
