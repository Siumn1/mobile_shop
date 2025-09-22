import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Почта',
                      fillColor: Color.fromARGB(255, 225, 225, 225),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,

                        //const BorderSide({this.color = Colors.black, this.width = 1.0});
                        //static const BorderSide none = BorderSide(color: Colors.transparent, width: 0);
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Color(0xFFB3E0CC),
                  ),
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Нажимая на кнопку "Зарегестрироваться", вы соглашаетесь с Политикой конфиденциальности и даете согласие на обработку ваших персональных данных',
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
