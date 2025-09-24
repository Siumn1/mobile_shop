import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

import '../models/user.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<AppUser?> register(email, password) async {
    try {
      //1. создаю акк пользователя
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );

      final uid = cred.user!.uid;

      //2. создаю обьект AppUser
      AppUser appUser = AppUser(uid: uid, email: email.value);

      //3. Сохраняю это в firestore
      await _firestore.collection('users').doc(uid).set(appUser.toMap());
      // var newUserInBd = await _firestore.collection('users').doc(uid).get();

      // if (newUserInBd.exists && newUserInBd.data != null) {
      //   AppUser newUserFormBd = AppUser.fromMap(newUserInBd.data()!);
      //   print('Обьект в бд - ${newUserFormBd}');
      //   print('почта - ${newUserFormBd.email}');
      // }

      // Get.snackbar("Успех", "Юзер создан и записан в бд");
      return (appUser);
    } catch (error) {
      print('Ошибка, не удалось создать юзерские аккаунт ${error}');
    }
  }

  Future<AppUser?> login(email, password) async {
    print(
      "Авторизация юзера, почта ${email.value}, пароль - ${password.value}",
    );

    try {
      //Нахожу юзера
      UserCredential cred = await _auth.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );

      final uid = cred.user!.uid;

      var userSnapshot = await _firestore.collection('users').doc(uid).get();

      if (userSnapshot.exists) {
        AppUser curUser = AppUser.fromMap(userSnapshot.data()!);
        Get.snackbar(
          "Успешная авторизация",
          'Сейчас: ${curUser.email}, ${curUser.uid}',
        );
        // Get.to(HomeView());
        return (curUser);
      } else {
        Get.snackbar("Ошибка авторизции", 'Сейчас: профиль не найден в бд');
      }

      // Get.snackbar(
      //   "Успешная авторизация",
      //   'Сейчас: ${email.value}, ${password.value}',
      // );
    } catch (error) {
      print(error);
    }
  }

  void logout() {}

  // Map<String, dynamic> saveUserProfile() {
  //   return ();
  // }
}
