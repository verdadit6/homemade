import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/widgets/cards/custom_shop_container.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';
import 'package:home_made/view/widgets/other/custom_bottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? myPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.screenBackgroundColor,
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
                    child: CustomTextfield(
                      hintText: "Search",
                      prefixIcon: Icons.search,
                      primaryColor: ColorUtilities.greyColor,
                      textFieldFillColor: ColorUtilities.darkSlateGreyColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: IconContainer(
                      icon: Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
            CustomShopContainer(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvY6FKvVc0WhR1wdBO9SGTW1j2Rd-A6IFhMg&usqp=CAU",
              shopName: "Cake Shop",
              phoneNo: "+91 9898925252",
              address: "(3.2 km) Yogi Chawk, Surat",
            ),
            CustomShopContainer(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRz0ijRC475Q9DOL6Wh-Uk5wZpM3snMRb-pg&usqp=CAU",
              shopName: "Heena by Kajal",
              phoneNo: "+91 9898925252",
              address: "(5.9 km) Varachha, Surat",
            ),
            CustomShopContainer(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYQ1Or-1ehWU3aK_3EdfQ3LfP8LdGOR9g1WQ&usqp=CAU",
              shopName: "Reema's Kitchen",
              phoneNo: "+91 9898925252",
              address: "(4.5 km) Adajan, Surat",
            ),
            CustomShopContainer(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0kVxEgy55m-fGbsfIhabtM6g7jtveh_omIA&usqp=CAU",
              shopName: "Saloni's Art",
              phoneNo: "+91 9898925252",
              address: "(1.5 km) Pal, Surat",
            ),
            CustomShopContainer(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUyOSmFCbw0kKl-nyhU9LBk7POk-_WJTxG_A&usqp=CAU",
              shopName: "Chocolicious",
              phoneNo: "+91 9898925252",
              address: "(7.5 km) Utran, Surat",
            ),
            CustomShopContainer(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5PsbHTh1dmlh-fHsko3jnEqBOJKGZ9VrpHw&usqp=CAU",
              shopName: "Joe's Saloon",
              phoneNo: "+91 9898925252",
              address: "(4.7 km) City Light, Surat",
            ),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData? icon;
  const IconContainer({Key? key, this.icon}) : super(key: key);

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
      child: Icon(
        icon,
        color: ColorUtilities.yellowColor,
      ),
    );
  }
}
