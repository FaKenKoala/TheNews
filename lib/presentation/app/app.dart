import 'package:flutter/material.dart';
import 'package:the_news/infrastructure/util/color_util.dart';
import 'package:the_news/presentation/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheNews',
      theme: ThemeData(
        primaryColor: ColorUtil.PrimaryColor,
      ),
      home: MyHomePage(),
    );
  }
}
