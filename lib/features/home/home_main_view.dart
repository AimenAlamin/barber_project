import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'account_view.dart';
import 'booking_view.dart';
import 'explore_view.dart';
import 'home_view.dart';
import 'message_view.dart';
import 'navigationbar/custom_bottom_navbar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;

  final List<Widget> screens = const [
    HomeView(),
    ExploreView(),
    BookingView(),
    MessageView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        onItemTapped: (index) {
          setState(() {
            currentViewIndex = index;
          });
        },
      ),
      backgroundColor: Colors.white,
      body: screens[currentViewIndex],
    );
  }
}
