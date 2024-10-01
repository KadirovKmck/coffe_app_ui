import 'package:flutter/material.dart';

class PriceAndChoiceMilkWidget extends StatefulWidget {
  const PriceAndChoiceMilkWidget({super.key});

  @override
  State<PriceAndChoiceMilkWidget> createState() =>
      _PriceAndChoiceMilkWidgetState();
}

class _PriceAndChoiceMilkWidgetState extends State<PriceAndChoiceMilkWidget> {
  List<String> items = [
    "Home",
    "Explore",
    "Search",
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Choice of Milk',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Rosarivo',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: double.infinity,
          height: 80,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(5),
                      width: 120,
                      height: 55,
                      decoration: BoxDecoration(
                        color: current == index
                            ? const Color(0xffEFE3C8)
                            : Colors.transparent,
                        borderRadius: current == index
                            ? BorderRadius.circular(15)
                            : BorderRadius.circular(15),
                        border: current == index
                            ? null
                            : Border.all(
                                color: const Color(0xffEFE3C8), width: 2.5),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              items[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: current == index
                                    ? const Color(0xff201520)
                                    : const Color(0xffEFE3C8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '₹249',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(
              width: 253,
              height: 45,
              padding: const EdgeInsets.only(
                top: 15,
                left: 50,
                right: 50,
                bottom: 13,
              ),
              decoration: ShapeDecoration(
                color: const Color(0xFFEFE3C8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 15,
                    offset: Offset(2, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Text(
                'BUY NOW',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF4A2B29),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
