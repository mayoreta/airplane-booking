import 'package:airplane_booking/shared/theme.dart';
import 'package:airplane_booking/ui/pages/bonus_page.dart';
import 'package:airplane_booking/ui/pages/main_page.dart';
import 'package:airplane_booking/ui/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:airplane_booking/ui/pages/splash_page.dart';
import 'package:airplane_booking/ui/pages/get_started_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
