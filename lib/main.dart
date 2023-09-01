import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:note_book/data/get_controllers.dart';
import 'package:note_book/data/routing/get_pages.dart';
import 'package:note_book/views/home/home_page.dart';
import 'package:note_book/views/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future controllers() async {
    await getController();
  }

  @override
  Widget build(BuildContext context) {
    controllers();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: getPages,
      home: const LoginPage()
    );
  }
}
