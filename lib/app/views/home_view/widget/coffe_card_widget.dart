import 'package:flutter/material.dart';

class CoffeCardWidget extends StatelessWidget {
  const CoffeCardWidget({
    super.key,
    required this.assetsName,
    required this.title,
  });
  final String assetsName;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 249,
      width: 145,
      child: Card(
        color: const Color.fromARGB(50, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 111,
                    width: 111,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/$assetsName'),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 41,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Color(0x7F404040),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(1),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Rosarivo',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                width: double.infinity,
                height: 39,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.07999999821186066),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          '₹99',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            height: 0.07,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 39,
                      height: 39,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEFE3C8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
