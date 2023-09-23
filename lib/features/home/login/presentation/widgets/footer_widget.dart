import 'package:flutter/material.dart';
import 'package:super_module/super_module.dart';
import 'package:styled_widget/styled_widget.dart';

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
            TextButton(onPressed: () {}, child: const Text("Privacy Policy"))
                .padding(horizontal: 4),
            TextButton(onPressed: () {}, child: const Text("Terms of use"))
                .padding(horizontal: 4),
          ],
        ),
        verticalSpacing(space: 24),
      ],
    );
  }
}
