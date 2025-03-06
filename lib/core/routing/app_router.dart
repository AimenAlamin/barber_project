import 'package:flutter/material.dart';
import 'package:nsquare_barber_project/features/home/account_view.dart';
import 'package:nsquare_barber_project/features/home/booking_view.dart';

import '../../features/home/home_main_view.dart';
import '../../features/home/home_view.dart';
import '../../features/home/open_view.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    //final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.mainView:
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );

      case Routes.openView:
        return MaterialPageRoute(
          builder: (_) => const OpenView(),
        );
      case Routes.bookingView:
        return MaterialPageRoute(
          builder: (_) => const BookingView(),
        );
      case Routes.accountView:
        return MaterialPageRoute(
          builder: (_) => const AccountView(),
        );
      case Routes.messageView:
        return MaterialPageRoute(
          builder: (_) => const AccountView(),
        );

      default:
        return null;
    }
  }
}
