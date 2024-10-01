
import 'package:flutter/material.dart';

class VerticalMenu extends StatefulWidget {
  const VerticalMenu({super.key});

  @override
  State<VerticalMenu> createState() => _VerticalMenuState();
}

class _VerticalMenuState extends State<VerticalMenu> {
  final List<String> menuItems = [
    'Cappuccino',
    'Latte',
    'Americano',
    'Espresso',
    'Flat White',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 550,
      decoration: const BoxDecoration(
        color: Color.fromARGB(79, 112, 67, 65), // Dark background color
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ), // Rounded corners on one side
      ),
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                menuItems[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFFEFE3C8),
                  fontFamily: 'Rosarivo',
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
