import 'package:coffe_app/app/views/home_view/widget/home_view_appbar_widget.dart';
import 'package:coffe_app/app/views/home_view/widget/home_view_body_widget.dart';
import 'package:coffe_app/app/components/search_textfild.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          HomeViewAppBarWidget(),
          SizedBox(
            height: 15,
          ),
          SearchTextField(),
          SizedBox(
            height: 25,
          ),
          HomeViewBodyWidget()
        ],
      ),
    );
  }
}
