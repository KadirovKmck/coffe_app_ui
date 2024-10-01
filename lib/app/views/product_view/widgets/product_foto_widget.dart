import 'package:flutter/material.dart';

class ProductFotoWidget extends StatelessWidget {
  const ProductFotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/coffe.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            width: 40,
            height: 40,
            decoration: const ShapeDecoration(
              color: Color(0x3FEFE3C8),
              shape: OvalBorder(),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
