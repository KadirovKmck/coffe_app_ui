import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201520),
      appBar: AppBar(
        backgroundColor: const Color(0xff201520),
        title: const Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Rosarivo',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const CardWidget();
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - - - - - -  ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xff38232A),
              ),
              child: Row(
                children: [
                  Align(
                    widthFactor: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff201520),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Apply Coupon Code',
                    style: TextStyle(
                      color: Color(0xFFEFE3C8),
                      fontSize: 14,
                      fontFamily: 'Rosarivo',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(
                      0xFFEFE3C8,
                    ),
                    size: 16,
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Align(
                    widthFactor: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff201520),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charges',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Rosarivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '₹49',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Taxes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Rosarivo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '₹64.87',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - - - - - -  ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Rosarivo',
                    fontWeight: FontWeight.w400,
                    height: 0.06,
                  ),
                ),
                Text(
                  '₹1009.87',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            Container(
              width: double.infinity,
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
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
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'PAY NOW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4A2B29),
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Slidable(
        direction: Axis.horizontal,
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            const SizedBox(
              width: 10,
            ),
            SlidableAction(
              padding: const EdgeInsets.all(BorderSide.strokeAlignCenter),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              onPressed: (context) {},
              backgroundColor: const Color(0x7FFF0000),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              height: 96,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.10000000149011612),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/coffe.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cappuccino',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Dalgona Macha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Rosarivo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '₹299',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 87,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(47, 255, 255, 255),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEFE3C8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.remove,
                            ),
                          ),
                        ),
                        const Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEFE3C8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
