import 'package:flutter/material.dart';
import 'package:home_made/view/screens/home/chat_screens/chat_page.dart';
import 'package:home_made/view/screens/home/home_screens/home_page.dart';
import 'package:home_made/view/screens/home/profile_screens/profile_page.dart';
import 'package:home_made/view/screens/home/search_screens/search_page.dart';
import 'package:home_made/view/widgets/other/custom_bottomNavigationBar.dart';

class Home extends StatefulWidget {
  int selectedIndex;
  Home({
    Key? key,
    this.selectedIndex = 0,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController? myPage;
  @override
  void initState() {
    myPage = PageController(initialPage: widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            controller: myPage,
            children: [
              HomePage(),
              SearchPage(),
              ChatPage(),
              ProfilePage(
                isSelected: true,
              ),
            ],
          ),
          Positioned(
            top: 630,
            left: 20,
            child: CustomBottomNavigationBar(
              onPageChange: (int index) {
                myPage?.jumpToPage(index);
                setState(() {
                  widget.selectedIndex = index;
                });
              },
              selectedIndex: widget.selectedIndex,
            ),
          ),
        ],
      ),
    );
  }
}
