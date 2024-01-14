import 'package:socket_chat/src/ui/splash/splash_controller.dart';
import 'package:socket_chat/src/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => const AppScaffold(
        body: Center(child: Text('Splash View')),
      ),
      init: SplashController(),
    );
  }
}
