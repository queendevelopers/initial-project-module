import 'injection.config.dart';
import 'injection.config.dart';
import 'injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:super_module/super_module.dart';


final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection({required String environment}) async {
  configureModuleDependencies(getIt);
  await $initGetIt(
    getIt,
    environment: environment,
  );
}
