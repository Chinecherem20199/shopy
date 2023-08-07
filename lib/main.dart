import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopy/pages/navpages/home_page.dart';
import 'package:shopy/pages/onboading.dart';
import 'package:shopy/pages/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/bonding": (BuildContext context) => const OnbondingPage(),
  "/home": (BuildContext context) => const HomePage()
};
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: routes,
    );
  }
}
