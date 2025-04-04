import 'package:flutter/material.dart';
import 'package:nurtura/features/home/presentation/views/widgets/Product_detail_body.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ProductDetailBody()),
    );
  }
}
