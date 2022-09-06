import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:initialproject/config/app_env.dart';
import 'package:initialproject/core/routes/auth_guard.dart';

import 'config/app_theme.dart';
import 'core/injection/injection.dart';
import 'core/routes/app_router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EasyLoading.instance.backgroundColor = Colors.orangeAccent;
  EasyLoading.instance.userInteractions = false;
  EasyLoading.instance.dismissOnTap = false;
  await AppEnv().injectFlavor();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter(authGuard: getIt<AuthGuard>());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const SizedBox(),
        builder: (context, extendedNav) {
          //Disables device rotation to landscape.
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          return FlutterEasyLoading(
            child: ScreenUtilInit(
              designSize: const Size(360,
                  690), // The [Size] of the device in the design draft, in dp
              builder: (_) => MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme.lightTheme,
                  themeMode: ThemeMode.light,
                  routeInformationParser: _appRouter.defaultRouteParser(),
                  routerDelegate: AutoRouterDelegate(_appRouter)),
            ),
          );
        });
  }
}
