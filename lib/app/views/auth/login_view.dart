import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';

import '../../models/user.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Get.back();
            },

            style: TextButton.styleFrom(
              alignment: Alignment.centerRight,
              minimumSize: Size(double.infinity, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),

            child: Text('Назад'),
          ),

          Center(
            child: Text(
              "Введите почту и пароль",
              // textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),

          Form(
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.fromLTRB(13, 20, 13, 0),
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Почта',
                      fillColor: const Color.fromARGB(255, 225, 225, 225),
                      filled: true,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) => authController.email.value = value,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Пароль',
                      fillColor: Color.fromARGB(255, 225, 225, 225),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,

                        //const BorderSide({this.color = Colors.black, this.width = 1.0});
                        //static const BorderSide none = BorderSide(color: Colors.transparent, width: 0);
                      ),
                    ),
                    onChanged: (value) => authController.password.value = value,
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () => authController.login(),
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Color(0xFFB3E0CC),
                  ),
                  child: Text(
                    'Авторизироваться',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Нажимая на кнопку "Авторизироваться", вы соглашаетесь с Политикой конфиденциальности и даете согласие на обработку ваших персональных данных',
                  style: TextStyle(fontSize: 9),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
