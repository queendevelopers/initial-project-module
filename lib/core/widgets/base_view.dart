import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final Widget body;
  final String? titleText;
  final Color? appBarColor;
  final Color? color;
  final bool resizeToAvoidBottomInset;
  final WillPopCallback? onBackCallback;
  final List<Widget> actions;
  final EdgeInsets padding;
  final Widget? bottomSheet;
  final BottomNavigationBar? bottomNavigationBar;
  final Widget? leading;
  final PreferredSizeWidget? bottomWidget;
  final double elevation;

  const BaseView({
    Key? key,
    this.titleText,
    required this.body,
    this.appBarColor,
    this.color,
    this.resizeToAvoidBottomInset = true,
    this.onBackCallback,
    this.bottomSheet,
    this.padding = const EdgeInsets.all(32.0),
    this.actions = const [],
    this.bottomNavigationBar,
    this.bottomWidget,
    this.elevation = 0,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 8, bottom: 8),
          child: Scaffold(
              bottomNavigationBar: bottomNavigationBar,
              bottomSheet: bottomSheet,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
              appBar: toolbar(context),
              body: Padding(padding: padding, child: body)),
        ),
        onWillPop: onBackCallback);
  }

  PreferredSize toolbar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(bottomWidget != null
          ? 140.0
          : titleText != null
              ? 56.0
              : 0.0),
      child: AppBar(
        centerTitle: true,
        leading: leading,
        elevation: elevation,
        title: Text(
          titleText ?? '',
        ),
        bottom: bottomWidget,
      ),
    );
  }
}
