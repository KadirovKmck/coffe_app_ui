import 'package:flutter/material.dart';

class CoffeinfoWidget extends StatelessWidget {
  const CoffeinfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cappuccino',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Rosarivo',
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              'Drizzled with Caramel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Rosarivo',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Text(
              '4.5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Rosarivo',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 343,
          height: 80,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Read More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
