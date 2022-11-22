import 'package:flutter/material.dart';
import 'package:initialproject/config/app_config.dart';
import 'package:initialproject/core/injection/injection.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('Hello Devs!!');
    return Center(
      child: Text(
          'Hello Devs!!\nYou\'re using env: ${getIt<AppConfig>().flavorName}',
          style: Theme.of(context).textTheme.headline4),
    );
  }
}
