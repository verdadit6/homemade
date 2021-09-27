import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';
import 'package:home_made/view/widgets/cards/custom_thing_container.dart';
import 'package:home_made/view/widgets/input/custom_textfield.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.screenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextfield(
                    hintText: "Search your product",
                    prefixIcon: Icons.search,
                    primaryColor: ColorUtilities.greyColor,
                    textFieldFillColor: ColorUtilities.darkSlateGreyColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                  ),
                  child: IconContainer(
                    icon: Icons.menu,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkYrMhrmNmkJlJYevS5mgJwgRZi6GozbFIyw&usqp=CAU",
                  price: "Rs.299.0",
                  rate: "4.5",
                  thingName: "Cream Cakes",
                ),
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDuVbvQZF1tYuHfgGIU2p9bcssV0U7wPNhMw&usqp=CAU",
                  price: "Rs.199.0",
                  rate: "4.8",
                  thingName: "Mahendi",
                ),
              ],
            ),
            Row(
              children: [
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR_zeYdwWn2YGR4wTa4WIdlPb-NIHmng-eXg&usqp=CAU",
                  price: "Rs.399.0",
                  rate: "3.5",
                  thingName: "Chocolates",
                ),
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGy5KMNJz8xBnOfZcHLJR306yKUlV3LiUujA&usqp=CAU",
                  price: "Rs.450.0",
                  rate: "3.2",
                  thingName: "Haircut",
                ),
              ],
            ),
            Row(
              children: [
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7-x1NNa7FMH8S3k3cXaaE5JND3ryI_nn2hQ&usqp=CAU",
                  price: "Rs.99.0",
                  rate: "4.0",
                  thingName: "Cup Cakes",
                ),
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpR3dSoCdcdyc7SwYptmvADh5yjRdj0t3PfQ&usqp=CAU",
                  price: "Rs.79.0",
                  rate: "4.3",
                  thingName: "Nail Polish",
                ),
              ],
            ),
            Row(
              children: [
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCdrLPHnh8xq1z1GQtnjN0pVE0jBZo4x-3Zw&usqp=CAU",
                  price: "Rs.99.0",
                  rate: "3.5",
                  thingName: "Noodles",
                ),
                CustomThingContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZJG5ZUmj0m64OJfrfkrH8kl4kCrak8dXkjw&usqp=CAU",
                  price: "Rs.199.0",
                  rate: "4.2",
                  thingName: "Soup",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
