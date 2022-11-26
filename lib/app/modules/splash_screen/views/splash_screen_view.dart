import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eve_sulhin/app/modules/home/views/home_view.dart';
import 'package:flutter_eve_sulhin/app/modules/login/views/login_view.dart';
import 'package:flutter_eve_sulhin/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      backgroundColor: Colors.white,
      showLoader: true,
      loaderColor: Colors.green,
      navigator: LoginView(),
      durationInSeconds: 5,
    );
  }
}
