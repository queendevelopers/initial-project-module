import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('Hello Devs!!');
    return Center(
      child: Text(
        'Hello Devs!!',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
