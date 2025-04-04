import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurtura/core/theme/colors.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/home/presentation/views/widgets/product_details.dart';
import 'package:nurtura/generated/assets.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false; // Track favorite state

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
          color: ColorsManager.primaryColor, // Light beige background
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section with heart icon
            Stack(
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
                      Assets.imagesTest, // Replace with product image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 3,
                  left: 3,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite; // Toggle favorite state
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.white, // White background
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isFavorite ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
                        size: 25,
                        color: isFavorite ? Colors.red : Colors.black, // Change color based on state
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Product title
            Text(
              'Whiting Cream',
              style: TextStyles.regular_12,
            ),
            const SizedBox(height: 4),

            // Star rating
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return const Icon(Icons.star, color: Colors.amber, size: 16);
              }),
            ),
            const SizedBox(height: 4),

            // Price
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
