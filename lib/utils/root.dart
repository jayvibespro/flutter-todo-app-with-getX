import 'package:flutter/material.dart';
import 'package:fluttertodoappwithgetx/controllers/authController.dart';
import 'package:fluttertodoappwithgetx/screens/home.dart';
import 'package:fluttertodoappwithgetx/screens/login.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user != null) ? Home() : Login();
    });
  }
}
