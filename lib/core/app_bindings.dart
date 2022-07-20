import 'package:alterwis/utils/common_utils.dart';
import 'package:get/get.dart';
import 'controllers/auth_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    CommonUtils.putRequiredControllers();
  }
}
