import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/home/home.dart';

class CustomerChat extends StatefulWidget {
  const CustomerChat({Key? key}) : super(key: key);

  @override
  _CustomerChatState createState() => _CustomerChatState();
}

class _CustomerChatState extends State<CustomerChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.grey[850],
          leadingWidth: 100,
          centerTitle: true,
          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Rodriguez",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreenAccent[400],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorUtilities.pinkLightColor,
                      child: Icon(
                        Icons.video_call,
                        color: ColorUtilities.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorUtilities.pinkLightColor,
                      child: Icon(
                        Icons.call,
                        color: ColorUtilities.whiteColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Home(
                      selectedIndex: 2,
                    );
                  }));
                },
                icon: Icon(
                  Icons.navigate_before,
                  color: ColorUtilities.whiteColor,
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhOGYEEmtBicrdF31nKO9n3jWeoex1uiVb9w&usqp=CAU",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
            ),
            child: Row(
              children: [
                CustomerMasg(
                  containerColor: ColorUtilities.darkSlateGreyColor,
                  topLeft: Radius.zero,
                  topRight: Radius.circular(20),
                  text: "Yes, what help do you need?",
                  time: "08:25",
                  width: 220,
                  height: 70,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomerMasg(
                  containerColor: ColorUtilities.pinkLightColor,
                  topLeft: Radius.circular(20),
                  topRight: Radius.zero,
                  text: """Should i come to hospital 
tomorrow?""",
                  time: "08:30",
                  width: 220,
                  height: 75,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
            ),
            child: Row(
              children: [
                CustomerMasg(
                  containerColor: ColorUtilities.darkSlateGreyColor,
                  topRight: Radius.circular(20),
                  topLeft: Radius.zero,
                  text: """Yes sure, you can come after
 2:00 pm.""",
                  time: "08:35",
                  width: 220,
                  height: 75,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomerMasg(
                  containerColor: ColorUtilities.pinkLightColor,
                  topLeft: Radius.circular(20),
                  topRight: Radius.zero,
                  text: "Sure,Thank you!!",
                  time: "08:40",
                  width: 220,
                  height: 60,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          SizedBox(
            height: 55,
            width: 380,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Type something...",
                hintStyle: TextStyle(
                  color: ColorUtilities.textColor,
                ),
                suffixIcon:
                    Icon(Icons.send, color: ColorUtilities.pinkLightColor),
                filled: true,
                fillColor: ColorUtilities.darkSlateGreyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerMasg extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final String? time;
  final Radius? topRight;
  final Radius? topLeft;
  final Color? containerColor;
  const CustomerMasg({
    Key? key,
    this.height,
    this.width,
    this.text,
    this.time,
    this.topRight,
    this.topLeft,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: topRight!,
          topLeft: topLeft!,
        ),
        color: containerColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8.0,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
