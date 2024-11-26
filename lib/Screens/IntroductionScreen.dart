import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionscreenClass extends StatefulWidget {
  @override
  State<IntroductionscreenClass> createState() => _IntroductionscreenState();
}

class _IntroductionscreenState extends State<IntroductionscreenClass> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      pageColor: Colors.white,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(image:Image.asset('shop.png')
            ,title: 'Shop now', body: "shop shop shop shop shop shop",
        
        decoration: pageDecoration),

        PageViewModel(title: 'Discount', body: "Discount Discount Discount Discount Discount Discount",
            image: Image.asset('discount.png'),
            decoration: pageDecoration),


        PageViewModel(title: 'Delivery', body: "Delivery Delivery Delivery Delivery Delivery Delivery",
            image: Image.asset('delivary.png'),
            decoration: pageDecoration),
      ],
      showSkipButton: false,
      showBackButton: false,
      back: Text("back"),
      showNextButton: false,
      dotsDecorator: DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        activeSize: Size(20, 10),
        spacing: EdgeInsets.symmetric(horizontal: 10)
      ),

      onDone: (){},
      onSkip: (){},
      
      done: Text("done"),
      showDoneButton: true,
    );
  }
}
