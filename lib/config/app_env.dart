import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:initialproject/core/injection/injection.dart';
import 'package:injectable/injectable.dart';

import 'app_config.dart';

class AppEnv {
  void injectFlavor({String? flavor}) async {
    final flavor =
        await const MethodChannel('flavor').invokeMethod('getFlavor');
    if (flavor == Environment.dev) {
      startDevelopment();
    } else if (flavor == Environment.test) {
      startUat();
    } else if (flavor == Environment.prod) {
      startProduction();
    } else {
      startDevelopment();
    }
  }

  void startDevelopment() {
    configureInjection(environment: Environment.dev);
    GetIt.I<AppConfig>().initialize(
      appName: 'DEV',
      flavorName: Environment.dev,
      baseUrl: 'http://qa.initialproject.com/api',
      // port: 80,
    );
  }

  void startUat() {
    configureInjection(environment: Environment.test);
    GetIt.I<AppConfig>().initialize(
      appName: 'UAT',
      flavorName: 'uat',
      baseUrl: 'http://uat.initialproject.com/api',
    );
  }

  void startProduction() {
    configureInjection(environment: Environment.prod);
    GetIt.I<AppConfig>().initialize(
        appName: '',
        flavorName: 'production',
        baseUrl: 'https://api.initialproject.com/api');
  }
}
