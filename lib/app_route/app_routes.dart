import 'package:socket_chat/src/ui/dashboard/dashboard_view.dart';
import 'package:socket_chat/src/ui/login/login_view.dart';
import 'package:socket_chat/src/ui/splash/splash_view.dart';
import 'package:get/get.dart';

class Routes {}

class AppRoutes {
  static const splash = '/'; //initial route
  static const login = '/login';
  static const dashboard = '/dashboard';

  static final routes = [
    GetPage(
      name: splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: login,
      page: () => const LoginView(),
    ),GetPage(
      name: dashboard,
      page: () => const DashboardView(),
    ),
  ];
}
