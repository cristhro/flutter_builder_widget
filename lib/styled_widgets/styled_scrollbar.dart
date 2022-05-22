import 'package:builder_widgets/core_packages.dart';
import 'package:flutter/material.dart';

class StyledScrollbar extends StatelessWidget {
  const StyledScrollbar({
    Key? key,
    required this.child,
    required this.controller,
    this.padding,
    this.enabled = true,
  }) : super(key: key);
  final bool enabled;
  final Widget child;
  final ScrollController controller;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    bool touchMode = false; //context.select((AppModel m) => m.enableTouchMode);
    Widget paddedChild = Padding(padding: padding ?? EdgeInsets.only(right: Insets.lg), child: child);
    return enabled
        ? Scrollbar(
            controller: controller,
            radius: Corners.smRadius,
            thickness: touchMode ? 6 : 10,
            showTrackOnHover: false,
            isAlwaysShown: touchMode == false,
            child: paddedChild,
          )
        : paddedChild;
  }
}
