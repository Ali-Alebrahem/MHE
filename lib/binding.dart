
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:mhe/mhecontroller.dart';
abstract class bind extends Bindings{
 @override

void dependencies(){
  Get.lazyPut(()=>mhecontroller());}
}