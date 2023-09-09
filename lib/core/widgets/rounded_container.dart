import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final double? height;
  final double? width;
  final double radius;
  final Function()? onTap;
  final Gradient? gradient;
  final ImageProvider? image;
  final Alignment childAlignment;
  final EdgeInsets padding;
  final double? elevation;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;

  final EdgeInsetsGeometry? margin;

  const RoundedContainer({
    Key? key,
    this.backgroundColor = Colors.white,
    this.padding = EdgeInsets.zero,
    required this.child,
    this.childAlignment = Alignment.center,
    this.radius = 8.0,
    this.height,
    this.width,
    this.gradient,
    this.onTap,
    this.border,
    this.margin,
    this.image,
    this.boxShadow,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        elevation: elevation,
        child: Container(
          alignment: childAlignment,
          width: width,
          height: height,
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            gradient: gradient,
            color: backgroundColor,
            border: border,
            boxShadow: boxShadow,
            image: image != null
                ? DecorationImage(image: image!, fit: BoxFit.cover)
                : null,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: child,
        ),
      ),
    );
  }
}
