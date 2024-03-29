import 'package:flutter/material.dart';
import 'package:instagram_flutter_app/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter_app/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter_app/responsive/web_screen_layout.dart';
import 'package:instagram_flutter_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout(),
        ));
  }
}
