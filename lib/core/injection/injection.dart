import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:super_module/super_module.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection({required String environment}) async {
  configureModuleDependencies(getIt);
  await $initGetIt(
    getIt,
    environment: environment,
  );
}
