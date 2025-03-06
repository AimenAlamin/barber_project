import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottom_navbar_entity.dart';
import 'nav_bar_item.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0x19000000),
            blurRadius: 25.r,
            offset: Offset(0.r, -2.r),
            spreadRadius: 0.r,
          ),
        ],
      ),
      child: Row(
        children: bottomNavigationBarItems.asMap().entries.map((e) {
          //accessing the entires of the list of bottomNavigationBarItems
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = e
                      .key; // here we assign what is selected from the buttons navbar to the selectedIndex
                  widget.onItemTapped(e.key);
                });
              },
              child: NavbarItem(
                //here we pass the isSelected and the bottomNavbarEntity to the NavbarItem widget
                isSelected: selectedIndex == e.key,
                bottomNavbarEntity:
                    e.value, //here e represents each item/entity in the list
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
