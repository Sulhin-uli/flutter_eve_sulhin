import 'package:flutter/cupertino.dart';
import 'package:flutter_eve_sulhin/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;

  final box = GetStorage();

  void signIn(String email, String password) {
    if (email == "" && password == "") {
      Get.defaultDialog(
        title: "Warning",
        titleStyle: TextStyle(fontSize: 12),
        content: Text(
          "Email/Password belum terisi!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      );
    } else {
      final data = box.read("userData") as Map<String, dynamic>;
      if (email == data["email"] && password == data["password"]) {
        Get.offNamed(Routes.PROFILE);
      } else {
        Get.defaultDialog(
          title: "Warning",
          titleStyle: TextStyle(fontSize: 12),
          content: Text(
            "Email/Password salah!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        );
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }
}
