import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_book/data/src/colors.dart';
import 'package:note_book/data/src/strings.dart';
import 'package:note_book/views/register/register_controller.dart';

class RegisterPage extends GetWidget<RegisterController> {
  static const String routeName = '/views/register/register_page';

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(registerAppBarTitle),
      ),
      body: Center(
        child: bodyWidget(),
      ),
    );
  }

  Widget bodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          userNameTextField(),
          buildSizedBax(),
          mailTextField(),
          buildSizedBax(),
          favoriteBookTextField(),
          buildSizedBax(),
          paswoordTextField(),
          buildSizedBax(),
          paswoordVerifyTextField(),
          buildSizedBax(),
          buildSizedBax(),
          buildLoginButton()
        ],
      ),
    );
  }

  Widget userNameTextField() {
    return TextField(
      textInputAction: TextInputAction.next,
      controller: controller.userNameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: nameHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget mailTextField() {
    return TextField(
      textInputAction: TextInputAction.next,
      controller: controller.mailController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: mainHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget favoriteBookTextField() {
    return TextField(
      textInputAction: TextInputAction.next,
      controller: controller.favoriteBookController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: faboriteBookHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget paswoordTextField() {
    return TextField(
      obscureText: true,
      textInputAction: TextInputAction.next,
      controller: controller.passwordController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: passwordHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget paswoordVerifyTextField() {
    return TextField(
      obscureText: true,
      controller: controller.passwordVerifyController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        hintText: verifypasswordHintText,
        fillColor: Colors.white,
      ),
    );
  }

  Widget buildSizedBax() {
    const double heightSize = 10.0;
    return const SizedBox(
      height: heightSize,
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


}
