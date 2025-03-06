import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'account_view.dart';
import 'booking_view.dart';
import 'explore_view.dart';
import 'home_view.dart';
import 'message_view.dart';
import 'navigationbar/custom_bottom_navbar.dart';

class MainView extends StatefulWidget {
  //my main screen/view which contains the bottom navigation bar and their screens/
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {});
        },
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.0.r,
            16.0.r,
            20.0.r,
            28.0.r,
          ),
          child: IndexedStack(
            //indexed stack is used to show the current view index without losing the state of the previous view to avoid rebuilding the view
            index: currentViewIndex,
            children: const [
              HomeView(),
              ExploreView(),
              BookingView(),
              MessageView(),
              AccountView(),
            ],
          ),
        ),
      ),
    );
  }
}
