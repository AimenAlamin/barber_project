import 'package:go_router/go_router.dart';
import 'package:nsquare_barber_project/features/home/account_view.dart';
import 'package:nsquare_barber_project/features/home/booking_view.dart';

import '../../features/home/home_main_view.dart';
import '../../features/home/home_view.dart';
import '../../features/home/open_view.dart';
import 'routes.dart';

final class AppRouter {
  static final router = GoRouter(
    initialLocation: Routes.mainView,
    routes: [
      GoRoute(
        path: Routes.mainView,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: Routes.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Routes.openView,
        builder: (context, state) => const OpenView(),
      ),
      GoRoute(
        path: Routes.bookingView,
        builder: (context, state) => const BookingView(),
      ),
      GoRoute(
        path: Routes.accountView,
        builder: (context, state) => const AccountView(),
      ),
      GoRoute(
        path: Routes.messageView,
        builder: (context, state) => const AccountView(),
      ),
    ],
  );
}
