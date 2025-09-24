import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_test_1/app/views/auth/login_view.dart';
import 'firebase_options.dart';

import 'package:get/get.dart';

import 'app/widgets/navbar.dart';

import 'app/views/home/home_view.dart';
import 'app/views/auth/auth_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ашан',
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => const LoginView()),
        GetPage(name: '/main', page: () => const MyNavbar()), // тут твой navbar
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: AuthView(),
    );
  }
}
