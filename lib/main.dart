import 'config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/injection/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:initialproject/config/app_env.dart';
import 'package:initialproject/core/routes/app_router.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv().injectFlavor();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter(getIt<ISessionManager>());

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
          return ResponsiveBreakpoints.builder(
        child:   FlutterEasyLoading(
            child:
                // ScreenUtilInit(
                //   designSize: const Size(360,
                //       690), // The [Size] of the device in the design draft, in dp
                //   builder: (_, __) =>
                MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    theme: AppTheme.lightTheme,
                    themeMode: ThemeMode.light,
                    routeInformationParser: _appRouter.defaultRouteParser(),
                    routerDelegate: AutoRouterDelegate(_appRouter)),
            //   ),
          ),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],);
        });
  }
}
