import 'package:coffe_app/app/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavbarView(),
      ),
    );
  }
}
