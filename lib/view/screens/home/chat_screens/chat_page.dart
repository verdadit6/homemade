import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/widgets/cards/custom_chat_card.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';

import 'customer_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.screenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Chats",
                  style: TextStyle(
                    color: ColorUtilities.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            CustomTextfield(
              hintText: "Search your product",
              prefixIcon: Icons.search,
              primaryColor: ColorUtilities.textColor,
              textFieldFillColor: ColorUtilities.darkSlateGreyColor,
            ),
            CustomChatCard(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return CustomerChat();
                }));
              },
              color: ColorUtilities.whiteColor,
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhOGYEEmtBicrdF31nKO9n3jWeoex1uiVb9w&usqp=CAU",
              drName: "John Rodriguez",
              msg: "Hello, how can i help you?",
              time: "14:22 am",
              widget: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtilities.primaryColor,
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: ColorUtilities.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            CustomChatCard(
              color: ColorUtilities.bottomNavigationBarIconColor,
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjgzOoeWAe9w4YTYMye3LNwVWU2QVptuu07w&usqp=CAU",
              drName: "Elizabeth Scott",
              msg: "Thank you for shopping",
              time: "05:25 am",
              widget: Container(),
            ),
            CustomChatCard(
              color: ColorUtilities.whiteColor,
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRFYeMQOkYzRSHr5kAc6KrL8mWmlalXvzjow&usqp=CAU",
              drName: "Miguel Johnson",
              msg: "What are your requirements?",
              time: "12:32 am",
              widget: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtilities.primaryColor,
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: ColorUtilities.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            CustomChatCard(
              color: ColorUtilities.bottomNavigationBarIconColor,
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhSqgx6ORldXhKOAfivPOra54wxUh7rrsAcw&usqp=CAU",
              drName: "Sarah Palson",
              msg: "I want cake by tomorrow",
              time: "07:56 am",
              widget: Container(),
            ),
            CustomChatCard(
              color: ColorUtilities.bottomNavigationBarIconColor,
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXCOdL3UoUp7oq2ONfXt1IzqPvgStHbSaT1Q&usqp=CAU",
              drName: "Anna Handy",
              msg: "Hello,when will you be available?",
              time: "16:45 am",
              widget: Container(),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
