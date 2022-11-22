import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:initialproject/core/injection/injection.dart';
import 'package:injectable/injectable.dart';

import 'app_config.dart';

class AppEnv {
  Future<void> injectFlavor({String? flavor}) async {
    if (Platform.isAndroid || Platform.isIOS) {
      final flavor =
          await const MethodChannel('flavor').invokeMethod('getFlavor');
      debugPrint('Running Env ${flavor.toString()}');
      if (flavor == Environment.dev) {
        await startDevelopment();
      } else if (flavor == Environment.test) {
        await startUat();
      } else if (flavor == Environment.prod) {
        await startProduction();
      } else {
        await startDevelopment();
      }
    } else {
      startProduction();
    }
  }

  Future<void> startDevelopment() async {
    await configureInjection(environment: Environment.dev);
    GetIt.I<AppConfig>().initialize(
      appName: 'DEV',
      flavorName: Environment.dev,
      baseUrl: 'http://qa.initialproject.com/api',
      // port: 80,
    );
  }

  Future<void> startUat() async {
    await configureInjection(environment: Environment.test);
    GetIt.I<AppConfig>().initialize(
      appName: 'UAT',
      flavorName: 'uat',
      baseUrl: 'http://uat.initialproject.com/api',
    );
  }

  Future<void> startProduction() async {
    await configureInjection(environment: Environment.prod);
    GetIt.I<AppConfig>().initialize(
        appName: '',
        flavorName: 'production',
        baseUrl: 'https://api.initialproject.com/api');
  }
}
