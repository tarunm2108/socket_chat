import 'package:socket_chat/app_route/app_routes.dart';
import 'package:socket_chat/base/app_base_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:socket_chat/model/user_model.dart';
import 'package:socket_chat/repository/auth_service/firebase_auth_service.dart';
import 'package:socket_chat/utils/shared_pre.dart';
import 'package:socket_chat/utils/utility.dart';

class LoginController extends AppBaseController {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final emailNode = FocusNode();
  final passNode = FocusNode();
  bool _hasHidePass = true;

  void hideShowPass() {
    hasHidePass = !hasHidePass;
  }

  Future<void> loginTap() async {
    if (emailCtrl.text.trim().isEmpty) {
      showToast(msg: 'Please enter email.');
    } else if (passCtrl.text.trim().isEmpty) {
      showToast(msg: 'Please enter password.');
    } else if (!GetUtils.isEmail(emailCtrl.text.trim())) {
      showToast(msg: 'Please enter valid email.');
    } else {
      emailNode.unfocus();
      passNode.unfocus();
      setBusy = true;
      final user = await FirebaseAuthService.instance.signUp(
        email: emailCtrl.text.trim(),
        password: passCtrl.text.trim(),
      );
      setBusy = false;
      if (user != null) {
        final loginUser =
            UserModel(id: user.user?.uid, email: user.user?.email);
        SharedPre.instance.setValue(SharedPre.loginUser, loginUser.toJson());
        Get.offAllNamed(AppRoutes.dashboard);
      } else {
        Utility.showToast(msg: "Something went wrong");
      }
    }
  }

  bool get hasHidePass => _hasHidePass;

  set hasHidePass(bool value) {
    _hasHidePass = value;
    update();
  }
}
