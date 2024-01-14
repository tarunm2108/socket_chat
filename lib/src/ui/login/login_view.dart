import 'package:socket_chat/app_locale/locale_string/lang_key.dart';
import 'package:socket_chat/src/extensions/space_extension.dart';
import 'package:socket_chat/src/ui/login/login_controller.dart';
import 'package:socket_chat/src/widgets/app_bar_widget.dart';
import 'package:socket_chat/src/widgets/app_button_widget.dart';
import 'package:socket_chat/src/widgets/app_scaffold.dart';
import 'package:socket_chat/src/widgets/app_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return AppScaffold(
          noneClickable: controller.setBusy,
          appBar: AppBarWidget(title: LangKey.login.tr),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                AppTextFieldWidget(
                  controller: controller.emailCtrl,
                  hintText: LangKey.email.tr,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  node: controller.emailNode,
                ),
                20.toSpace,
                AppTextFieldWidget(
                  controller: controller.passCtrl,
                  hintText: LangKey.password.tr,
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  node: controller.passNode,
                  obscureText: controller.hasHidePass,
                  suffix: InkWell(
                    onTap: () => controller.hideShowPass(),
                    child: Icon(controller.hasHidePass
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                20.toSpace,
                AppButtonWidget(
                  onPressed: () => controller.loginTap(),
                  title: LangKey.login.tr,
                ),
              ],
            ),
          ),
        );
      },
      init: LoginController(),
    );
  }
}
