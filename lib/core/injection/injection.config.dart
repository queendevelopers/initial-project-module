import 'local_module.dart' as _i12;
import '../routes/auth_guard.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import '../../config/app_config.dart' as _i3;
import '../network/http_config.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import '../network/file_upload_config.dart' as _i8;
import 'package:super_module/super_module.dart' as _i5;
import '../network/http_helper_event_listener.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:flutter_rest_client/flutter_rest_client.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'register_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes


// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final localModule = _$LocalModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.factory<_i4.AuthGuard>(() => _i4.AuthGuard(get<_i5.ISessionManager>()));
  gh.singleton<_i6.FlutterSecureStorage>(localModule.secureStorage());
  gh.factory<_i7.IHttpConfig>(
    () => _i8.FileUploadConfig(
      get<_i3.AppConfig>(),
      get<_i5.ISessionManager>(),
      get<_i9.HttpHelperEventListener>(),
    ),
    instanceName: 'uploadConfig',
  );
  gh.factory<_i7.IHttpHelperEventListening>(
      () => _i9.HttpHelperEventListener(get<_i5.ISessionManager>()));
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => localModule.prefs,
    preResolve: true,
  );
  gh.factory<_i7.IFileUploadRepository>(() =>
      registerModule.fileUploadRepository(
          get<_i7.IHttpConfig>(instanceName: 'uploadConfig')));
  gh.singleton<_i7.IHttpConfig>(
    _i11.HttpConfig(
      get<_i3.AppConfig>(),
      get<_i5.ISessionManager>(),
      get<_i7.IHttpHelperEventListening>(),
    ),
    instanceName: 'httpConfig',
  );
  gh.factory<_i7.IHttpHelper>(() => registerModule
      .httpHelper(get<_i7.IHttpConfig>(instanceName: 'httpConfig')));
  return get;
}

class _$LocalModule extends _i12.LocalModule {}

class _$RegisterModule extends _i13.RegisterModule {}
