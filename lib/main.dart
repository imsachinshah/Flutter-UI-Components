import 'package:carousel/packages/Carousel.dart';
import 'package:carousel/packages/ContextMenu.dart';
import 'package:carousel/packages/MaterialBanner.dart';
import 'package:carousel/packages/stepper.dart';
import 'package:flutter/material.dart';
import 'packages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/carousel': (context) => CarouselList(),
        '/context_menu': (context) => ContextMenu(),
        '/material_banner': (context) => BannerScreen(),
        '/stepper': (context) => StepperScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'Carousel',
      // home: Home(),
    );
  }
}
