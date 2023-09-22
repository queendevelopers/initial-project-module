import 'config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/injection/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:initialproject/config/app_env.dart';
import 'package:initialproject/core/routes/app_router.dart';

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
          return FlutterEasyLoading(
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
          );
        });
  }
}
