import 'package:builder_widgets/_utils/input_utils.dart';
import 'package:builder_widgets/core_packages.dart';
import 'package:flutter/material.dart';

class StyledPageScaffold extends StatelessWidget {
  const StyledPageScaffold({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme.fromType(ThemeType.Orange_Light);
    //TODO: Add a FocusTraversalGroup() when this bug is addressed:https://github.com/flutter/flutter/issues/74656
    return GestureDetector(
      onTap: InputUtils.unFocus,
      child: Scaffold(
        backgroundColor: theme.bg1,
        body: Stack(
          children: [
            //ContextMenuRegion(child: Container(), contextMenu: const AppContextMenu()),
            body,
          ],
        ),
      ),
    );
  }
}
