import 'package:flutter/material.dart';
import 'package:whitelabel_app/app/screens/auth/login/login_screen.dart';
import 'package:whitelabel_app/core/environment/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Environment.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(int.parse(Environment.envPrimaryColor)),
      ),
      home: const LoginScreen(),
    );
  }
}
