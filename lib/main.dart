import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-commerce App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: SplashScreen()
    );
  }
}
