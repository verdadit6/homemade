import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

typedef OnPageChangeCallBack = void Function(int);

class CustomBottomNavigationBar extends StatefulWidget {
  OnPageChangeCallBack onPageChange;
  int selectedIndex;
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
      height: 55,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: ColorUtilities.lightGreyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigationBarIcon(
            onPageChange: () {
              widget.onPageChange(0);
            },
            selectedIndex: widget.selectedIndex,
            pageIndex: 0,
            icon: Icons.home_outlined,
            iconName: "Home",
          ),
          BottomNavigationBarIcon(
            onPageChange: () {
              widget.onPageChange(1);
            },
            selectedIndex: widget.selectedIndex,
            pageIndex: 1,
            icon: Icons.search,
            iconName: "Search",
          ),
          BottomNavigationBarIcon(
            onPageChange: () {
              widget.onPageChange(2);
            },
            selectedIndex: widget.selectedIndex,
            pageIndex: 2,
            icon: Icons.chat_bubble_outline,
            iconName: "Chat",
          ),
          BottomNavigationBarIcon(
            selectedIndex: widget.selectedIndex,
            onPageChange: () {
              widget.onPageChange(3);
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

  final VoidCallback onPageChange;
  BottomNavigationBarIcon({
    Key? key,
    required this.onPageChange,
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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPageChange();
      },
      child: widget.selectedIndex == widget.pageIndex
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorUtilities.primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        widget.icon,
                        color: ColorUtilities.whiteColor,
                      ),
                      Text(
                        widget.iconName!,
                        style: TextStyle(
                          color: ColorUtilities.whiteColor,
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
    );
  }
}
