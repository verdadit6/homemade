import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

typedef OnPageChangeCallBack = void Function(int);

class CustomBottomNavigationBar extends StatefulWidget {
  OnPageChangeCallBack onPageChange;
  int? selectedIndex;
  CustomBottomNavigationBar({
    Key? key,
    required this.onPageChange,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: ColorUtilities.lightGreyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigationBarIcon(
            onPageChange: (int index) {
              widget.selectedIndex = index;
            },
            selectedIndex: 0,
            pageIndex: 0,
            icon: Icons.home_outlined,
            iconName: "Home",
          ),
          BottomNavigationBarIcon(
            onPageChange: (int index) {
              widget.selectedIndex = index;
            },
            selectedIndex: 0,
            pageIndex: 1,
            icon: Icons.search,
            iconName: "Search",
          ),
          BottomNavigationBarIcon(
            onPageChange: (int index) {
              widget.selectedIndex = index;
            },
            selectedIndex: 0,
            pageIndex: 2,
            icon: Icons.chat_bubble_outline,
            iconName: "Chat",
          ),
          BottomNavigationBarIcon(
            selectedIndex: 0,
            onPageChange: (int index) {
              widget.selectedIndex = index;
            },
            pageIndex: 3,
            icon: Icons.person_outline,
            iconName: "Profile",
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarIcon extends StatefulWidget {
  int selectedIndex;
  final int pageIndex;
  final String? iconName;
  final IconData? icon;

  final OnPageChangeCallBack? onPageChange;
  BottomNavigationBarIcon({
    Key? key,
    this.onPageChange,
    required this.selectedIndex,
    required this.pageIndex,
    this.iconName,
    this.icon,
  }) : super(key: key);

  @override
  _BottomNavigationBarIconState createState() =>
      _BottomNavigationBarIconState();
}

class _BottomNavigationBarIconState extends State<BottomNavigationBarIcon> {
  onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
    widget.onPageChange!(index);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onItemTapped(
          widget.selectedIndex,
        ),
        child: widget.selectedIndex == widget.pageIndex
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorUtilities.primaryColor,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            widget.icon,
                            color: ColorUtilities.whiteColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.iconName!,
                            style: TextStyle(
                              color: ColorUtilities.whiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Icon(
                widget.icon,
                color: ColorUtilities.bottomNavigationBarIconColor,
              ),
      ),
    );
  }
}
