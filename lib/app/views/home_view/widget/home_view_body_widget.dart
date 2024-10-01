import 'package:coffe_app/app/views/home_view/widget/coffe_card_widget.dart';
import 'package:coffe_app/app/views/home_view/widget/vertical_menu.dart';
import 'package:coffe_app/app/views/product_view/product_view.dart';
import 'package:flutter/material.dart';

class HomeViewBodyWidget extends StatelessWidget {
  const HomeViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalMenu(),
        Expanded(
          child: SizedBox(
            height: 550,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 4,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductView(),
                        ),
                      );
                    },
                    child: const CoffeCardWidget(
                      assetsName: 'profile.jpeg',
                      title: "Cinnamon & Coccoa",
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
