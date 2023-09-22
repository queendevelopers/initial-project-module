import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

enum ButtonWidth { large, small }

class AppButton extends StatelessWidget {
  final String buttonText;
  final ButtonWidth buttonWidth;
  final EdgeInsets padding;
  final GestureTapCallback? onPressed;
  final Duration duration;
  final Widget? leadingWidget;
  final Color? backgroundColor;
  final OutlinedBorder outlinedBorder;

  const AppButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.buttonWidth = ButtonWidth.large,
    this.padding = const EdgeInsets.all(24.0),
    this.duration = const Duration(seconds: 5),
    this.leadingWidget,
    this.backgroundColor,
    this.outlinedBorder = const StadiumBorder(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 14,
        width: buttonWidth == ButtonWidth.small
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.width / 1.10,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.secondary, elevation: 0,
              shape: outlinedBorder),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              leadingWidget ?? const SizedBox(),
              Text(
                buttonText,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4.2,
                    overflow: TextOverflow.ellipsis),
              )
            ],
          ),
        )).center(heightFactor: 1.8);
  }
}
