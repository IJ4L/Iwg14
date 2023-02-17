import 'package:apk1/latihanPage/loginpage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController pw = TextEditingController();

  @override
  void onInit() {
    username = TextEditingController();
    pw = TextEditingController();
    super.onInit();
  }

  login() {
    if (username.text.isEmpty && pw.text.isEmpty) {
      Get.snackbar(
        'GAGAL LOGIN',
        'EMAIL DAN PASSWORD SALAH',
        backgroundColor: Colors.white,
      );
    } else if (username.text.isEmpty) {
      Get.snackbar(
        'GAGAL LOGIN',
        'EMAIL SALAH',
        backgroundColor: Colors.red,
      );
    } else if (pw.text.isEmpty) {
      Get.snackbar(
        'GAGAL LOGIN',
        'PASSWORD SALAH',
        backgroundColor: Colors.white,
      );
    } else {
      Get.to(mainpage());
    }
  }

  @override
  void onClose() {
    username.dispose();
    pw.dispose();
    super.onClose();
  }
}
