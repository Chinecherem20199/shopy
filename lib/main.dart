

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopy/models/dommydata/sample.dart';
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
  //runApp(ProviderScope(create:(context)=> Shop(), child: const MyApp(),));
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>Sample())
        ],
        child: const SplashScreen(),
      ),
     // home: const SplashScreen(),
      routes: routes,
    );
  }
}
