import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:initialproject/core/routes/app_router.gr.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FittedBox(
              child: Placeholder(
            fallbackHeight: 16,
            fallbackWidth: 16,
          )),
          horizontalSpacing(space: 16),
          TextButton(
            onPressed: () => context.navigateTo(const HomeRoute()),
            child: Text("CodeZenInfoTech",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
          ),
          const Spacer(),
          TextButton(
            onPressed: () => context.pushRoute(const ServicesRoute()),
            child: Text(
              "Services",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
            ),
          ),
          horizontalSpacing(
            space: 16,
          ),
          TextButton(
            onPressed: () => context.pushRoute(const AboutUsRoute()),
            child: Text(
              "About Us",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
