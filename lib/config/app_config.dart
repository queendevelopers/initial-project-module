import 'package:injectable/injectable.dart';

@LazySingleton()
class AppConfig {
  late String appName;
  late String baseUrl;
  late String flavorName;

  String getBaseUrl() => baseUrl;

  void initialize(
      {required String appName,
      required String baseUrl,
      required String flavorName}) {
    this.appName = appName;
    this.baseUrl = baseUrl;
    this.flavorName = flavorName;
  }
}
