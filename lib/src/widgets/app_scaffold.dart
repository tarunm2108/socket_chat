import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingAction;
  final bool? noneClickable;

  const AppScaffold({
    this.appBar,
    this.body,
    this.noneClickable,
    this.floatingAction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return noneClickable ?? false
            ? Future.value(false)
            : Future.value(true);
      },
      child: AbsorbPointer(
        absorbing: noneClickable ?? false,
        child: Stack(
          children: [
            Scaffold(
              appBar: appBar,
              body: body,
              backgroundColor: Colors.white,
              floatingActionButton: floatingAction,
            ),
            Positioned(
              child: noneClickable ?? false
                  ? Container(
                color: Colors.black.withOpacity(0.3),
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
