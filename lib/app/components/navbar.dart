import 'package:coffe_app/app/views/card/card_view..dart';
import 'package:coffe_app/app/views/home_view/home_view.dart';
import 'package:coffe_app/app/views/product_view/product_view.dart';
import 'package:flutter/material.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;
  final List<Widget> views = [
    const HomeView(),
    const CardView(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_currentIndex],
      backgroundColor: const Color(0xff201520),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff22151F),
        selectedItemColor: const Color(0xffEFE3C8),
        unselectedItemColor: const Color.fromARGB(255, 173, 148, 148),
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white60,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 40,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
