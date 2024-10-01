import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF171017),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              color: Color(0xFFA89F94),
              size: 40,
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Browse your favourite coffee...',
                  hintStyle: TextStyle(
                    color: Color(0xFFA89F94),
                    fontFamily: 'Rosarivo',
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
