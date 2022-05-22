import 'package:builder_widgets/core_packages.dart';
import 'package:flutter/material.dart';

class MaterialIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const MaterialIcon(this.icon, {Key? key, this.size = 20, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.fromType(ThemeType.Orange_Light);
    return Icon(icon, size: size, color: color ?? theme.greyStrong);
  }
}
