import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:initialproject/core/widgets/rounded_container.dart';
import 'package:initialproject/core/widgets/app_circular_avatar.dart';
import 'package:initialproject/core/constants/dummy_data/dummy_data.dart';
import 'package:initialproject/features/home/widgets/app_navigation_bar.dart';
import 'package:initialproject/features/home/widgets/mega_footer_widget.dart';
import 'package:initialproject/features/home/widgets/video_player_widget.dart';


@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Stack(
          children: [
            Container(
                color: Colors.black,
                width: double.infinity,
                height: ResponsiveBreakpoints.of(context).screenHeight * 0.65,
                child: Stack(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveBreakpoints.of(context).screenWidth *
                                0.15),
                    child: const Opacity(
                        opacity: 0.35,
                        child: VideoPlayerWidget(
                            assetPath: "assets/videos/office.mp4")),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveBreakpoints.of(context).screenWidth *
                                0.15),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                              text: TextSpan(
                                  style:
                                      Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
                                  children: [
                                const TextSpan(
                                    text: "Scale your development team"),
                                TextSpan(
                                    text: "\nwith top software engineers",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(color: Colors.amber)),
                                TextSpan(
                                    text:
                                        "\n\nWe’re the #1 software development talent\nprovider to companies worldwide.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!.copyWith(color: Colors.white))
                              ])),
                          const Spacer(),
                          FittedBox(
                            child: RoundedContainer(
                                padding: const EdgeInsets.all(24),
                                elevation: 4.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const AppCircularAvatarImage(
                                          radius: 40,
                                          imageProvider:
                                              NetworkImage(DummyData.carImage),
                                        ),
                                        horizontalSpacing(space: 12),
                                        Column(
                                          children: [
                                            Text(
                                                "Need a better\ntech hire option?",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge),
                                            verticalSpacing(space: 8),
                                            const Text("Brennan (Sales head)"),
                                            verticalSpacing(space: 8),
                                          ],
                                        ),
                                      ],
                                    ),
                                    verticalSpacing(space: 24),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            foregroundColor: Colors.white,
                                            shadowColor: Colors.blueAccent,
                                            minimumSize: const Size(160, 60)),
                                        onPressed: () {},
                                        child: const Text(
                                          "Let's Connect >",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ])),
            ListView(
                shrinkWrap: true,
                padding: ResponsiveBreakpoints.of(context).isDesktop
                    ? EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveBreakpoints.of(context).screenWidth *
                                0.15)
                    : EdgeInsets.zero,
                children: const [ 
                 AppNavigationBar(),
                ])
          ],
        ),
        verticalSpacing(space: 32),
        Text(
          "Join amazing companies that outsource with CodeZenInfoTech",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        verticalSpacing(space: 32),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveBreakpoints.of(context).screenWidth * 0.15),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Placeholder(
                    fallbackWidth: 180,
                    fallbackHeight: 40,
                  ),
                  Placeholder(
                    fallbackWidth: 180,
                    fallbackHeight: 40,
                  ),
                  Placeholder(
                    fallbackWidth: 180,
                    fallbackHeight: 40,
                  ),
                  Placeholder(
                    fallbackWidth: 180,
                    fallbackHeight: 40,
                  ),
                  Placeholder(
                    fallbackWidth: 180,
                    fallbackHeight: 40,
                  )
                ],
              ),
            ],
          ),
        ),
        verticalSpacing(space: 32),
        const MegaFooter(),
      ]),
    ));
  }
}
