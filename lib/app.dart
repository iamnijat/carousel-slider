import 'package:carousel_slider/presentation/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Carousel Slider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: const IntroPage(),
      );
    });
  }
}
