import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:super_module/super_module.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:initialproject/core/routes/app_router.gr.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        verticalSpacing(space: 24),
        Row(
          children: [
            const Text("2023 © CodeZenInfoTech LLC."),
            const Spacer(),
            TextButton(onPressed: () => context.navigateTo(const PrivacyPolicyRoute()), child: const Text("Privacy Policy"))
                .padding(horizontal: 4),
            TextButton(onPressed: () => context.navigateTo(const TermsAndConditionRoute()), child: const Text("Terms of use"))
                .padding(horizontal: 4),
          ],
        ),
        verticalSpacing(space: 24),
      ],
    );
  }
}
