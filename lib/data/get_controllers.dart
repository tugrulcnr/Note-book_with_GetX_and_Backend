import 'package:get/get.dart';
import 'package:note_book/views/login/login_controller.dart';

import '../views/add_notes/add_notes_controller.dart';
import '../views/home/home_controller.dart';
import '../views/register/register_controller.dart';

Future getController()async{
  Get.create(() => LoginController(),permanent : false);
  Get.create(() => AddNotesController(),permanent : false);
  Get.create(() => HomeController(),permanent : false);
  Get.create(() => RegisterController(),permanent : false);


}