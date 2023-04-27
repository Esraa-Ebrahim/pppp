import 'package:attendane_app/services/remote/dio_helper.dart';
import 'package:attendane_app/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import 'package:responsive_framework/responsive_framework.dart';
//import 'package:hex-color/hexcolor.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();

  

  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  builder:
  (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(480, name: 'SM'),
          const ResponsiveBreakpoint.autoScale(800, name: 'MD'),
          const ResponsiveBreakpoint.autoScale(1000, name: 'LG'),
          const ResponsiveBreakpoint.autoScale(1200, name: 'XL'),
          const ResponsiveBreakpoint.autoScale(2460, name: '2XL'),
        ],
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
