import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_book/data/src/colors.dart';
import 'package:note_book/data/src/images.dart';
import 'package:note_book/data/src/strings.dart';
import 'package:note_book/views/register/register_page.dart';

import 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  static const String routeName = '/views/login/login_page';
  const LoginPage({super.key});

  // BUNUN YERİNE extends EDİYORUM
  //LoginController controller = Get.put(LoginController()); // Rather Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(loginAppBarTitle),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildImage(),
            buildUserNameTextField(),
            buildSizedBax(),
            buildPasswordTextField(),
            buildSizedBax(),
            buildSizedBax(),
            buildLoginButton(),
            buildSizedBax(),
            buildRegisterText(),
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return Image.asset(loginLogo);
  }

  Widget buildUserNameTextField() {
    return TextField(
      textInputAction: TextInputAction.next,
      controller: controller.userNameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: userNameHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget buildPasswordTextField() {
    return TextField(
      obscureText: true,
      controller: controller.paswordController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: passwordHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget buildLoginButton() {
    const double heightSize = 40.0;
    return SizedBox(
      height: heightSize,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(loginSingUpButton),
        style: ElevatedButton.styleFrom(
          primary: appBarColor,
        ),
      ),
    );
  }

  Widget buildRegisterTexte() {
    return const Text(
      registerQuestion + registerTextButton,
      textAlign: TextAlign.center,
    );
  }

  Widget buildRegisterText() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          const TextSpan(
              text: registerQuestion, style: TextStyle(color: Colors.black)),
          TextSpan(
              text: registerTextButton,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.offNamed(RegisterPage.routeName);
                },
              style: const TextStyle( 
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  textBaseline: TextBaseline.alphabetic)),
        ]));
  }

  Widget buildSizedBax() {
    const double heightSize = 10.0;
    return const SizedBox(
      height: heightSize,
    );
  }
}
