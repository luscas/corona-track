import 'package:flutter/material.dart';
import 'package:coronatrack/colors.dart';
import 'package:coronatrack/home_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona Track',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Prompt',
        primarySwatch: createMaterialColor(CustomColor.primary)
      ),
      home: HomePage()
    );
  }
}
