
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';


class LoginPage extends GetWidget<LoginController> {
  static const String routeName = '/views/login/login_page';
  const LoginPage({super.key});

  // BUNUN YERİNE extends EDİYORUM
  //LoginController controller = Get.put(LoginController()); // Rather Controller controller = Controller();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("login"),
      ),
    );
  }
}