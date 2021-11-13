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
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
      },
    );
  }
}
