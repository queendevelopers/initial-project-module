import 'package:flutter_rest_client/flutter_rest_client.dart';
import 'package:initialproject/config/app_config.dart';
import 'package:injectable/injectable.dart';
import 'package:super_module/super_module.dart';

import 'http_helper_event_listener.dart';

@Named('uploadConfig')
@Injectable(as: IHttpConfig)
class FileUploadConfig implements IHttpConfig {
  final ISessionManager _iSessionManager;
  final AppConfig _appConfig;
  final HttpHelperEventListener httpListener;

  FileUploadConfig(this._appConfig, this._iSessionManager, this.httpListener);

  @override
  int connectionTimeout = 12000;

  @override
  String contentType = 'multipart/form-data';

  @override
  int receiveTimeout = 12000;

  @override
  String get baseUrl => _appConfig.baseUrl;

  @override
  Future<String?> get token => _iSessionManager.getToken();

  @override
  bool curlLogger = false;

  @override
  bool dioLogger = true;

  @override
  IHttpHelperEventListening get listener => httpListener;

  @override
  // TODO: implement socketUrl
  String get socketUrl => throw UnimplementedError();
}
