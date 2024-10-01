import 'package:coffe_app/app/views/product_view/widgets/coffe_info_widget.dart';
import 'package:coffe_app/app/views/product_view/widgets/price_and_choice_milk_widget.dart';
import 'package:coffe_app/app/views/product_view/widgets/product_foto_widget.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff201520),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductFotoWidget(),
                SizedBox(
                  height: 16,
                ),
                CoffeinfoWidget(),
                SizedBox(
                  height: 16,
                ),
                PriceAndChoiceMilkWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
