import 'dart:async';

import 'package:flutter/material.dart';

import 'IntroductionScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
   ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> IntroductionscreenClass() )
   )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black87,
          image: DecorationImage(
            image: AssetImage('images/image2.jpg'),
            fit: BoxFit.cover,
            opacity: 0.4
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart,
            size: 200,
            color: Color.fromARGB(200, 117, 55, 55),),
            Text("JOUD boutique",style:TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.white70
            ),)
          ],
        ),
      ),
    );
  }
}
