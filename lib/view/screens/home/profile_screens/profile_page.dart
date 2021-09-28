import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/widgets/button/custom_elevated_buttons.dart';

class ProfilePage extends StatefulWidget {
  bool isSelected = true;
  ProfilePage({Key? key, required this.isSelected}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.screenBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorUtilities.darkSlateGreyColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorUtilities.darkSlateGreyColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhOGYEEmtBicrdF31nKO9n3jWeoex1uiVb9w&usqp=CAU",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Harry Jhons",
                        style: TextStyle(
                          color: ColorUtilities.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "harry@yahoo.com",
                        style: TextStyle(
                          color: ColorUtilities.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 110,
                        child: ElevatedButton(
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: ColorUtilities.yellowColor,
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(
                                color: ColorUtilities.yellowColor,
                                width: 1,
                              ),
                            ),
                            primary: ColorUtilities.darkYellowColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 270,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorUtilities.darkSlateGreyColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "Account",
                          style: TextStyle(
                            color: ColorUtilities.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ProfileRow(
                    rowName: "Personal Information",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileRow(
                    rowName: "Country",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileRow(
                    rowName: "Favorite Items",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                          color: ColorUtilities.whiteColor,
                          fontSize: 15,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Switch(
                              value: widget.isSelected,
                              onChanged: (bool value) {
                                widget.isSelected = value;
                              },
                              activeColor: ColorUtilities.yellowColor,
                              activeTrackColor: ColorUtilities.yellowColor,
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    width: 110,
                    child: ElevatedButton(
                      child: Text(
                        "LOGOUT",
                        style: TextStyle(
                          color: ColorUtilities.primaryColor,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        primary: ColorUtilities.primaryColor.withOpacity(0.3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 3,
              width: 380,
              color: ColorUtilities.darkSlateGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final String? rowName;
  const ProfileRow({Key? key, this.rowName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Text(
          rowName!,
          style: TextStyle(
            color: ColorUtilities.whiteColor,
            fontSize: 15,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.navigate_next,
                color: ColorUtilities.whiteColor,
              ),
              SizedBox(
                width: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
