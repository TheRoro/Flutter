import 'package:get/get.dart';

import 'package:getx_cli/app/modules/login/controllers/loginform_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginformController>(
      () => LoginformController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
