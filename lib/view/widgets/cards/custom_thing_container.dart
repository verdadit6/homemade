import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

class CustomThingContainer extends StatefulWidget {
  final String? url;
  final String? thingName;
  final String? price;
  final String? rate;
  const CustomThingContainer({
    Key? key,
    this.url,
    this.thingName,
    this.price,
    this.rate,
  }) : super(key: key);

  @override
  _CustomThingContainerState createState() => _CustomThingContainerState();
}

class _CustomThingContainerState extends State<CustomThingContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          top: 10.0,
          right: 10.0,
          bottom: 10,
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              width: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    widget.url!,
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 180,
              decoration: BoxDecoration(
                color: ColorUtilities.darkSlateGreyColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.thingName!,
                          style: TextStyle(
                            color: ColorUtilities.whiteColor,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.price!,
                          style: TextStyle(
                            color: ColorUtilities.whiteColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorUtilities.darkYellowColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: ColorUtilities.yellowColor,
                                  size: 15,
                                ),
                                Text(
                                  widget.rate!,
                                  style: TextStyle(
                                    color: ColorUtilities.yellowColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
