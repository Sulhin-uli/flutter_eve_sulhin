import 'package:flutter/cupertino.dart';
import 'package:flutter_eve_sulhin/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;

  final box = GetStorage();

  void signIn(String email, String password) {
    final data = box.read("userData") as Map<String, dynamic>;
    // login(data["email"], data["password"]);
    if (email == data["email"] && password == data["password"]) {
      Get.offNamed(Routes.PROFILE);
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }
}
