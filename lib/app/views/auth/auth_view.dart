import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_test_1/app/views/auth/login_view.dart';
import 'package:flutter_application_test_1/app/views/auth/register_view.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';

import '../../models/user.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              'Добро пожаловать!',
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Center(
              child: Image.asset(
                'assets/images/ashan_things/auth_pic.png',
                width: double.infinity,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // ElevatedButton(onPressed: () {}, child: Text('Авторизация')),
          // OutlinedButton(onPressed: () {}, child: Text('Авторизация')),
          SizedBox(height: 50),

          TextButton(
            onPressed: () => Get.to(LoginView()),

            style: TextButton.styleFrom(
              minimumSize: Size(300, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Colors.green,
            ),
            child: Text('Войти', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () => Get.to(RegisterView()),

            style: TextButton.styleFrom(
              minimumSize: Size(300, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: const Color.fromARGB(255, 233, 233, 233),
            ),
            child: Text(
              'Зарегистрироваться',
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      ),
    );
  }
}
