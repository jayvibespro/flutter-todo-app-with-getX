import 'package:flutter/material.dart';
import 'package:fluttertodoappwithgetx/controllers/authController.dart';
import 'package:get/get.dart';

class Signup extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Sign Up'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(hintText: "User Name"),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(hintText: "Email"),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.createUser(
                      emailController.text, passwordController.text);
                },
                child: const Text('Sign Up'),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Go to Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
