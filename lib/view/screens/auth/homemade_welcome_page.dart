import 'dart:io';

import 'package:flutter/material.dart';
import "package:home_made/utilities/utilities.dart";
import 'package:home_made/view/screens/auth/login_screen.dart';
import 'package:home_made/view/screens/auth/register_screen.dart';
import 'package:home_made/view/widgets/button/custom_elevated_buttons.dart';

class HomemadeWelcomePage extends StatefulWidget {
  const HomemadeWelcomePage({Key? key}) : super(key: key);

  @override
  _HomemadeWelcomePageState createState() => _HomemadeWelcomePageState();
}

class _HomemadeWelcomePageState extends State<HomemadeWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700,
        width: 410,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1629227577000/photosp/6d422496-84e5-450d-a0d6-f7b34dda780e/stock-photo-frame-beauty-cosmetics-pastel-background-makeup-foundation-make-up-makeup-brush-6d422496-84e5-450d-a0d6-f7b34dda780e.jpg",
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                """Find your products
           inside""",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: ColorUtilities.pinkLightColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomElevatedButtons(
                buttonName: "Log In",
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return LoginScreen();
                  }));
                },
                buttonBackgroundColor: ColorUtilities.pinkLightColor,
                height: 45,
                width: 220,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomElevatedButtons(
                buttonName: "Register",
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return RegisterScreen();
                  }));
                },
                buttonBackgroundColor: ColorUtilities.yellowColor,
                height: 45,
                width: 220,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
