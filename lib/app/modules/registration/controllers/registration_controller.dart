import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {

  final mobileNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final hideConfirmPassword = true.obs;
  final hidePassword = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  passwordHide() {
    hidePassword.value = !hidePassword.value;
    update();
  }

  confirmPasswordHide() {
    hideConfirmPassword.value = !hideConfirmPassword.value;
    update();
  }

}
