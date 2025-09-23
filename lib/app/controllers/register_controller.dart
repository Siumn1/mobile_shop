import 'package:get/get.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class RegisterController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<void> register() async {
    print(
      "Регистрация юзера, почта ${email.value}, пароль - ${password.value}",
    );
    //Firebaseзовские штуки
    // FirebaseAuth.instance.createUserWithEmailAndPassword(
    //   email: email.value,
    //   password: password.value,
    // );

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

      Get.snackbar("Успех", "Юзер создан и записан в бд");

    } catch (error) {
      print('Ошибка, не удалось создать юзерские аккаунт ${error}');
    }
  }
}
