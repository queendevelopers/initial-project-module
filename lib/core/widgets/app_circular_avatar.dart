import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class AppCircularAvatarImage extends StatelessWidget {
  final ImageProvider? imageProvider;
  final double radius;
  final Function()? onTapCallback;
  final Widget? child;
  final Color? backgroundColor;

  const AppCircularAvatarImage(
      {Key? key,
      this.imageProvider,
      this.radius = 16,
      this.onTapCallback,
      this.child,
      this.backgroundColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
            backgroundImage: imageProvider,
            backgroundColor: backgroundColor,
            radius: radius,
            child: child)
        .gestures(onTap: onTapCallback);
  }
}
