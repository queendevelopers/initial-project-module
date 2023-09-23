import 'package:flutter/material.dart';
import 'package:super_module/super_module.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:initialproject/features/home/login/presentation/widgets/footer_widget.dart';

class MegaFooter extends StatelessWidget {
  const MegaFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
      children: [
        verticalSpacing(space: 24),
        const Placeholder(
          fallbackHeight: 80,
        ),
        verticalSpacing(space: 24),
        const FooterWidget()
      ],
    ).padding(horizontal: ResponsiveBreakpoints.of(context).screenWidth * 0.15))
        .backgroundColor(Colors.grey.withOpacity(0.15));
  }
}
