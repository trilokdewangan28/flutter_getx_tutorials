import 'package:get/get.dart';

import '../controllers/TapController.dart';
import '../controllers/list_controller.dart';

class InitDep implements Bindings{
  @override
  void dependencies() {
    Get.put(TapController());
    Get.put(ListController());
  }
  
}