import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/home/home.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';

class CakeShop extends StatefulWidget {
  const CakeShop({Key? key}) : super(key: key);

  @override
  _CakeShopState createState() => _CakeShopState();
}

class _CakeShopState extends State<CakeShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUtilities.screenBackgroundColor,
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconContainer(
                  icon: Icons.navigate_before,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Home(
                        selectedIndex: 0,
                      );
                    }));
                  },
                ),
              ),
              SizedBox(
                width: 91,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconContainer(
                  icon: Icons.book,
                  onPressed: () {},
                ),
              ),
              IconContainer(
                icon: Icons.phone_callback_outlined,
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconContainer(
                  icon: Icons.menu,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            height: 230,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvY6FKvVc0WhR1wdBO9SGTW1j2Rd-A6IFhMg&usqp=CAU",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 214,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorUtilities.darkSlateGreyColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Cake Shop",
                          style: TextStyle(
                            color: ColorUtilities.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: ColorUtilities.primaryColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorUtilities.yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorUtilities.yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorUtilities.yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: ColorUtilities.yellowColor,
                        ),
                        Icon(
                          Icons.star_half_outlined,
                          size: 20,
                          color: ColorUtilities.yellowColor,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: ColorUtilities.textColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: ColorUtilities.yellowColor,
                        ),
                        Text(
                          "(3.2 km) Yogi Chawk, Surat",
                          style: TextStyle(
                            color: ColorUtilities.textColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call_outlined,
                          color: ColorUtilities.yellowColor,
                        ),
                        Text(
                          "+91 9898925252",
                          style: TextStyle(
                            color: ColorUtilities.textColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      """
We provide all types of homemade cakes using all
healthy ingredients. we supply pre order cakes
and you have to order prior 1-2 days minimum
                      """,
                      style: TextStyle(
                        color: ColorUtilities.textColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Categories",
                style: TextStyle(
                  color: ColorUtilities.whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CategoryIcon(
                  icon: Icons.shopping_bag,
                  text: "Cloth",
                ),
                SizedBox(
                  width: 20,
                ),
                CategoryIcon(
                  icon: Icons.code_sharp,
                  text: "Cosmetics",
                ),
                SizedBox(
                  width: 20,
                ),
                CategoryIcon(
                  icon: Icons.fastfood_outlined,
                  text: "Food",
                ),
                SizedBox(
                  width: 20,
                ),
                CategoryIcon(
                  icon: Icons.local_pizza_outlined,
                  text: "Pizza",
                ),
              ],
            ),
          ),
        ]));
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const CategoryIcon({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorUtilities.pinkLightColor.withOpacity(0.3),
          ),
          child: Icon(
            icon,
            color: ColorUtilities.pinkLightColor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text!,
          style: TextStyle(
            color: ColorUtilities.whiteColor,
          ),
        ),
      ],
    );
  }
}
