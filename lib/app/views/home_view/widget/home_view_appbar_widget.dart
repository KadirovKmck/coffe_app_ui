import 'package:flutter/material.dart';

class HomeViewAppBarWidget extends StatelessWidget {
  const HomeViewAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'déjà',
                  style: TextStyle(
                    color: Color(0x7FEFE2C8),
                    fontSize: 36,
                    fontFamily: 'Rosarivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '\nBrew',
                  style: TextStyle(
                    color: Color(0xFFEFE3C8),
                    fontSize: 48,
                    fontFamily: 'Rosarivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(
              'assets/images/profile.jpeg',
            ),
          ),
        ],
      ),
    );
  }
}
