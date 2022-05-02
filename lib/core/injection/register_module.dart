import 'package:flutter_rest_client/flutter_rest_client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Injectable(as: IHttpHelper)
  HttpHelper httpHelper(@Named('httpConfig') IHttpConfig config) =>
      HttpHelper(config: config);

  @Injectable(as: IFileUploadRepository)
  FileUploadRepository fileUploadRepository(
          @Named('uploadConfig') IHttpConfig config) =>
      FileUploadRepository(config: config);
}
