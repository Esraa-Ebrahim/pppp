import 'package:attendane_app/splash_screen.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import 'package:responsive_framework/responsive_framework.dart';
//import 'package:hex-color/hexcolor.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  builder:
  (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(480, name: 'SM'),
          ResponsiveBreakpoint.autoScale(800, name: 'MD'),
          ResponsiveBreakpoint.autoScale(1000, name: 'LG'),
          ResponsiveBreakpoint.autoScale(1200, name: 'XL'),
          ResponsiveBreakpoint.autoScale(2460, name: '2XL'),
        ],
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
