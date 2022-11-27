import 'package:flutter/cupertino.dart';
import 'package:flutter_eve_sulhin/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;

  final box = GetStorage();

  void signUp(String email, String password) {
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
      final nameUser = box.read("name");
      box.write('userData', {
        "email": email,
        "password": password,
        "name": nameUser,
      });

      Get.offNamed(Routes.LOGIN);
    }
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }
}
