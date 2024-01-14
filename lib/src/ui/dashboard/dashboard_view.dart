import 'package:socket_chat/src/ui/dashboard/dashboard_controller.dart';
import 'package:socket_chat/src/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => const AppScaffold(
        body: Center(child: Text('Dashboard View')),
      ),
      init: DashboardController(),
    );
  }
}
