import 'package:firebase_login_app/auth_controller.dart';
import 'package:firebase_login_app/login_page.dart';
import 'package:firebase_login_app/signup_page.dart';
import 'package:firebase_login_app/splash_screen.dart';
import 'package:firebase_login_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),
      home: SplashScreen(),
    );
  }
}
