import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/list_controller.dart';
import '../controllers/TapController.dart';

Future<void> init()async{
  Get.put(TapController());
  Get.put(ListController());
}