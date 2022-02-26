import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';
import 'package:home_made/view/widgets/button/custom_elevated_buttons.dart';

import '../home.dart';

class CreamCake extends StatefulWidget {
  const CreamCake({Key? key}) : super(key: key);

  @override
  _CreamCakeState createState() => _CreamCakeState();
}

class _CreamCakeState extends State<CreamCake> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtilities.screenBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Home(
                        selectedIndex: 1,
                      );
                    }));
                  },
                  icon: Icon(
                    Icons.navigate_before,
                    color: ColorUtilities.whiteColor,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Cream Cakes",
                  style: TextStyle(
                    color: ColorUtilities.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYzzxEZE_qHdqyDo9-Wy3Zx5J9XTmHmaubCg&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZj-a03RG02MzhhRviUFnsJEZfcmOandXCpA&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlWFY4zgBPl8V8i-9v-KpThUo0AvfpLggK0g&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK45P-cikh-azInBnmPLYuFCdBwJzH2IuW_g&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkLksATTWNbIF8yyDSdDJHHu82s2Q2AxJePQ&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl5nwq-93KUvOgsjilL131ThkNks_ovogvJw&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc8S90ZMmisnBvQC5OFWekmqog9axz2GS8mQ&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEbB3WrglxxzYNQEVdi4E3b4itHSnNQ157NQ&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ__gRKFDrAZcHaRP7SS2Z3zfD-UyB-BSXI-w&usqp=CAU",
                ),
                PictureContainer(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPsHCyE-4__PU0J2lYEtvJTrcr_J6vRwcRGQ&usqp=CAU",
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.width / 3 * 0 - 100,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut);
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYzzxEZE_qHdqyDo9-Wy3Zx5J9XTmHmaubCg&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                      MediaQuery.of(context).size.width / 3 * 1 + 130,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZj-a03RG02MzhhRviUFnsJEZfcmOandXCpA&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                      MediaQuery.of(context).size.width / 3 * 5 - 160,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlWFY4zgBPl8V8i-9v-KpThUo0AvfpLggK0g&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                      MediaQuery.of(context).size.width / 3 * 6 - 80,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK45P-cikh-azInBnmPLYuFCdBwJzH2IuW_g&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                      MediaQuery.of(context).size.width / 3 * 7 + 10,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkLksATTWNbIF8yyDSdDJHHu82s2Q2AxJePQ&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.width / 3 * 9 - 40,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut);
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl5nwq-93KUvOgsjilL131ThkNks_ovogvJw&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.width / 3 * 10 + 50,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut);
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc8S90ZMmisnBvQC5OFWekmqog9axz2GS8mQ&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.width / 3 * 12 + 20,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut);
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEbB3WrglxxzYNQEVdi4E3b4itHSnNQ157NQ&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.width / 3 * 14 - 50,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut);
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ__gRKFDrAZcHaRP7SS2Z3zfD-UyB-BSXI-w&usqp=CAU",
                ),
                SmallPictureContainer(
                  onTap: () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.width / 3 * 15 + 60,
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut);
                  },
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPsHCyE-4__PU0J2lYEtvJTrcr_J6vRwcRGQ&usqp=CAU",
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorUtilities.darkSlateGreyColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cream Cakes",
                                style: TextStyle(
                                  color: ColorUtilities.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 5,
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
                                    "4.5/5",
                                    style: TextStyle(
                                      color: ColorUtilities.textColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "  1000 Reviews",
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
                                "299.0",
                                style: TextStyle(
                                  color: ColorUtilities.whiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: ColorUtilities.yellowColor,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorUtilities.yellowColor
                                      .withOpacity(0.4),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Available Stock : 3",
                                style: TextStyle(
                                  color: ColorUtilities.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        """
These are simple Cream Cakes with only cream
decoration with diffrent colors. Decoration will include 
diffrent designs and techniques. Extra price for extra
decoration and customization
                        """,
                        style: TextStyle(
                          color: ColorUtilities.whiteColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary: ColorUtilities.pinkLightColor,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Add to Cart"),
                              Container(
                                height: 20,
                                width: 2,
                                color: ColorUtilities.whiteColor,
                              ),
                              Text("600"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PictureContainer extends StatelessWidget {
  final String? url;
  const PictureContainer({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 250,
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              url!,
            ),
          ),
        ),
      ),
    );
  }
}

class SmallPictureContainer extends StatelessWidget {
  final String? url;
  final void Function()? onTap;
  const SmallPictureContainer({Key? key, this.url, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BorderSide(
          color: ColorUtilities.pinkLightColor,
          width: 3,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  url!,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
