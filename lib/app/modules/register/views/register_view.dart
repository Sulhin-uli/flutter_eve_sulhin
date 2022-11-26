import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text(
                "Email",
                style: TextStyle(
                  color: Color(0xff919A92),
                ),
              ),
              TextFormField(
                controller: controller.email,
                cursorColor: const Color(0xff16A085),
              ),
              const Text(
                "Password",
                style: TextStyle(
                  color: Color(0xff919A92),
                ),
              ),
              TextFormField(
                controller: controller.password,
                cursorColor: const Color(0xff16A085),
              ),
              ElevatedButton(
                onPressed: () => controller.signUp(
                    controller.email.text, controller.password.text),
                child: Text("SignUp"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
