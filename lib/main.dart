import 'package:flutter/material.dart';

import 'barber_app.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(BarberApp(
    appRouter: AppRouter(),
  ));
}
