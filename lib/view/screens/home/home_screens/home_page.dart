import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/widgets/cards/custom_shop_container.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';

import 'cake_shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? myPage;
  int? index;
  bool? isSelected = false;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RangeValues _currentRangeValues = RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ColorUtilities.screenBackgroundColor,
      endDrawer: Column(
        children: [
          Container(
            height: 40,
            width: 300,
            margin: EdgeInsets.only(top: 30, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: ColorUtilities.pinkLightColor,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        color: ColorUtilities.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 10,
                  child: Icon(
                    Icons.close,
                    color: ColorUtilities.whiteColor,
                    size: 18,
                  ),
                  backgroundColor: ColorUtilities.whiteColor.withOpacity(0.4),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 180,
            margin: EdgeInsets.only(right: 20),
            width: 300,
            color: ColorUtilities.lightGreyColor,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Type",
                          style: TextStyle(
                            color: ColorUtilities.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: isSelected == true
                          ? Text(
                              "$index Selected",
                              style: TextStyle(
                                color: ColorUtilities.textColor,
                              ),
                            )
                          : Container(),
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomChip(text: "ECom"),
                    CustomChip(text: "Automobile"),
                    CustomChip(text: "Crimes"),
                  ],
                ),
                Row(
                  children: [
                    CustomChip(text: "Business"),
                    CustomChip(text: "Fitness"),
                    CustomChip(text: "Astro"),
                  ],
                ),
                Row(
                  children: [
                    CustomChip(text: "Electronics"),
                    CustomChip(text: "Health"),
                    CustomChip(text: "Tech"),
                  ],
                ),
                Row(
                  children: [
                    CustomChip(text: "Entertainment"),
                    CustomChip(text: "World"),
                    CustomChip(text: "Sports"),
                  ],
                ),
                Row(
                  children: [
                    CustomChip(text: "Other"),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Price Range",
                          style: TextStyle(
                            color: ColorUtilities.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "${_currentRangeValues.start.round()}, "
                      "${_currentRangeValues.end.round()}",
                      style: TextStyle(
                        color: ColorUtilities.yellowColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                RangeSlider(
                  inactiveColor: ColorUtilities.yellowColor,
                  activeColor: ColorUtilities.pinkLightColor,
                  values: _currentRangeValues,
                  min: 0,
                  max: 100,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 20),
            height: 35,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      primary: ColorUtilities.darkSlateGreyColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Clear",
                      style: TextStyle(
                        color: ColorUtilities.yellowColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Apply",
                      style: TextStyle(
                        color: ColorUtilities.whiteColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      primary: ColorUtilities.pinkLightColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: IconContainer(
                      icon: Icons.location_on_outlined,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextfield(
                          hintText: "Search",
                          prefixIcon: Icons.search,
                          primaryColor: ColorUtilities.textColor,
                          textFieldFillColor: ColorUtilities.darkSlateGreyColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: IconContainer(
                      onPressed: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                      icon: Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
            CustomShopContainer(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return CakeShop();
                }));
              },
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvY6FKvVc0WhR1wdBO9SGTW1j2Rd-A6IFhMg&usqp=CAU",
              shopName: "Cake Shop",
              phoneNo: "+91 9898925252",
              address: "(3.2 km) Yogi Chawk, Surat",
            ),
            CustomShopContainer(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRz0ijRC475Q9DOL6Wh-Uk5wZpM3snMRb-pg&usqp=CAU",
              shopName: "Heena by Kajal",
              phoneNo: "+91 9898925252",
              address: "(5.9 km) Varachha, Surat",
            ),
            CustomShopContainer(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYQ1Or-1ehWU3aK_3EdfQ3LfP8LdGOR9g1WQ&usqp=CAU",
              shopName: "Reema's Kitchen",
              phoneNo: "+91 9898925252",
              address: "(4.5 km) Adajan, Surat",
            ),
            CustomShopContainer(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0kVxEgy55m-fGbsfIhabtM6g7jtveh_omIA&usqp=CAU",
              shopName: "Saloni's Art",
              phoneNo: "+91 9898925252",
              address: "(1.5 km) Pal, Surat",
            ),
            CustomShopContainer(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUyOSmFCbw0kKl-nyhU9LBk7POk-_WJTxG_A&usqp=CAU",
              shopName: "Chocolicious",
              phoneNo: "+91 9898925252",
              address: "(7.5 km) Utran, Surat",
            ),
            CustomShopContainer(
              onTap: () {},
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5PsbHTh1dmlh-fHsko3jnEqBOJKGZ9VrpHw&usqp=CAU",
              shopName: "Joe's Saloon",
              phoneNo: "+91 9898925252",
              address: "(4.7 km) City Light, Surat",
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

class IconContainer extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;
  const IconContainer({
    Key? key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorUtilities.yellowColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        color: ColorUtilities.darkYellowColor,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: ColorUtilities.yellowColor,
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip({Key? key, this.width, this.text}) : super(key: key);
  final double? width;
  final String? text;
  final bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 35,
        width: width,
        child: FilterChip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            showCheckmark: true,
            selectedColor: ColorUtilities.chipColor,
            selected: isSelected,
            checkmarkColor: ColorUtilities.pinkLightColor,
            side: isSelected == true
                ? BorderSide(
                    color: ColorUtilities.pinkLightColor,
                    width: 2,
                  )
                : BorderSide(),
            elevation: 0,
            backgroundColor: ColorUtilities.darkSlateGreyColor,
            label: Text(text!),
            labelStyle: TextStyle(
              color: isSelected == true
                  ? ColorUtilities.pinkLightColor
                  : ColorUtilities.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
            onSelected: (bool value) {
              value = isSelected;
            }),
      ),
    );
  }
}
