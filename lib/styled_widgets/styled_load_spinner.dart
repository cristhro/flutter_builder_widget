import 'package:builder_widgets/core_packages.dart';
import 'package:flutter/material.dart';

class StyledLoadSpinner extends StatelessWidget {
  const StyledLoadSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.fromType(ThemeType.Orange_Light);
    return SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          backgroundColor: theme.greyWeak,
          valueColor: AlwaysStoppedAnimation<Color>(theme.greyStrong),
        ));
  }
}
