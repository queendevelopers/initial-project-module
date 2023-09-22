import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:initialproject/config/app_config.dart';
import 'package:initialproject/core/injection/injection.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Stack(children: [
        Placeholder(fallbackWidth: 800,),
        Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center, children: [
          Placeholder(fallbackHeight: 20,strokeWidth: 20,),
          Text("CodeZenInfoTech"),
          Spacer(),
          Text("Reviews"),
          Text("Services"),
          Text("Company"),
        ],),

        Text("Scale your development team"),
        Text("with top software engineers")
    ]),);
  }
}
