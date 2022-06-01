import 'package:flutter_rest_client/flutter_rest_client.dart';
import 'package:initialproject/config/app_config.dart';
import 'package:initialproject/core/constants/keys/app_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:super_module/super_module.dart';

@Named('httpConfig')
@Singleton(as: IHttpConfig)
class HttpConfig implements IHttpConfig {
  final AppConfig _appConfig;
  final ISessionManager _iSessionManager;
  final IHttpHelperEventListening httpListener;

  HttpConfig(this._appConfig, this._iSessionManager, this.httpListener);

  @override
  String contentType = AppKeys.applicationJson;

  @override
  int receiveTimeout = 8000;

  @override
  String get baseUrl => _appConfig.baseUrl;

  @override
  int connectionTimeout = 8000;

  @override
  bool curlLogger = false;

  @override
  bool dioLogger = true;

  @override
  IHttpHelperEventListening get listener => httpListener;

  @override
  Future<String?> get token => _iSessionManager.getToken();

  @override
  // TODO: implement socketUrl
  String get socketUrl => throw UnimplementedError();
}
