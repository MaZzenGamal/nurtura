import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/home/presentation/views/widgets/product_details.dart';
import 'package:nurtura/generated/assets.dart';

class ScanningGridViewItem extends StatelessWidget {
  const ScanningGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PopScope(
              child: const ProductDetails(),
            ),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 250,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: ColorsManager.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  Assets.imagesTest,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Whiting Cream',
              style: TextStyles.regular_12,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return const Icon(Icons.star, color: Colors.amber, size: 16);
              }),
            ),
            const SizedBox(height: 4),
            Text(
              '\$15.00',
              style: TextStyles.regular_12,
            ),
          ],
        ),
      ),
    );
  }
}
