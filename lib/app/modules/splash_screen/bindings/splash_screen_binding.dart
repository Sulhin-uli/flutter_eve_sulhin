import 'package:flutter_eve_sulhin/app/modules/introduction/controllers/introduction_controller.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
    );
    Get.lazyPut<IntroductionController>(
      () => IntroductionController(),
    );
  }
}
