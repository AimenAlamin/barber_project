import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class BarberApp extends StatelessWidget {
  final AppRouter appRouter;
  const BarberApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "BarberApp",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.mainView,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
