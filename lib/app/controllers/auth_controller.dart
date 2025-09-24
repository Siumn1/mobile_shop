import 'package:flutter_application_test_1/app/views/home/home_view.dart';
import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/auth_service.dart';

import '../models/user.dart';

class AuthController extends GetxController {
  final _authService = AuthService();

  var email = ''.obs;
  var password = ''.obs;
  var currentUser = Rxn<AppUser>();

  Future<void> login() async {
    AppUser? user = await _authService.login(email, password);

    if (user != null) {
      currentUser.value = user;
      Get.snackbar("Успех!", "Вы авторизированы.");
      Get.offAllNamed('/main');
    } else {
      Get.snackbar("Ошибка!", "Неверный логин или пароль.");
    }
  }

  Future<void> register() async {
    AppUser? user = await _authService.register(email, password);
    if (user != null) {
      currentUser.value = user;
      Get.snackbar("Успех!", "Вы заригестрироавлись.");
    } else {
      Get.snackbar("Ошибка!", "Ошибка регистрации.");
    }
  }

  // Future<void> logout() async {
  //   await _authService.logout();
  //   currentUser.value = null;
  //   Get.snackbar("Успех", "Вы вышли из системы");
  // }
}
