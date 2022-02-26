import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

class CustomChatCard extends StatefulWidget {
  final Widget? widget;
  final String? drName;
  final String? msg;
  final String? time;
  final String? url;
  final Color? color;
  final void Function()? onTap;
  const CustomChatCard({
    Key? key,
    this.widget,
    this.drName,
    this.msg,
    this.time,
    this.url,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  _CustomChatCardState createState() => _CustomChatCardState();
}

class _CustomChatCardState extends State<CustomChatCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 90,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorUtilities.darkSlateGreyColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorUtilities.darkSlateGreyColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        widget.url!,
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
                    widget.drName!,
                    style: TextStyle(
                      color: ColorUtilities.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.msg!,
                    style: TextStyle(
                      color: widget.color,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.time!,
                        style: TextStyle(
                          color: ColorUtilities.bottomNavigationBarIconColor,
                        ),
                      ),
                      widget.widget!,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
