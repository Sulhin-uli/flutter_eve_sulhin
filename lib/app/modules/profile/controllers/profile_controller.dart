import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  final name = ''.obs;
  final box = GetStorage();

  @override
  void onInit() {
    name.value = box.read("name");
  }
}
