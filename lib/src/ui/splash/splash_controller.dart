import 'package:socket_chat/app_route/app_routes.dart';
import 'package:socket_chat/base/app_base_controller.dart';
import 'package:get/get.dart';
import 'package:socket_chat/utils/shared_pre.dart';

class SplashController extends AppBaseController {
  @override
  void onReady() {
    final user = SharedPre.instance.getObj(SharedPre.loginUser);
    if (user.isNotEmpty) {
      Get.offAllNamed(AppRoutes.dashboard);
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }
}
