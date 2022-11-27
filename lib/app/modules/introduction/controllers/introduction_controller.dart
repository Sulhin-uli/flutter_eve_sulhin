import 'package:flutter_eve_sulhin/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class IntroductionController extends GetxController {
  final box = GetStorage();
  GoogleSignIn googleSignIn = new GoogleSignIn();
  GoogleSignInAccount? currentUser;

  Future<void> googleLogin() async {
    try {
      handleSignOut();
      await googleSignIn.signIn().then((value) => currentUser = value);
      box.write('name', currentUser!.displayName);

      Get.offNamed(Routes.REGISTER);
    } catch (e) {
      print(e);
    }
  }

  Future<void> handleSignOut() => googleSignIn.signOut();
}
