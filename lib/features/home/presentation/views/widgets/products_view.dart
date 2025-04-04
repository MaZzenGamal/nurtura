import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/styles.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('skin care products',style: TextStyles.bold_15,),
              const Spacer(),
              Text('See all',style: TextStyles.bold_15.copyWith(color: Colors.blue),),
            ],
          )
        ],
      ),
    );
  }
}
