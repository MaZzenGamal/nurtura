import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/generated/assets.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Details Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Product Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
          const SizedBox(height: 12),

          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              Assets.imagesTest, // Replace with actual image path
              height: 380,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),

          // Product Name
           Text(
            'Medik8 Facial Cream',
            style: TextStyles.extraBold_16,
          ),
          const SizedBox(height: 4),

          // Product Views
          Row(
            children: [
               Text(
                 'This product has been viewed by more than 100 people.',
                 style: TextStyles.regular_11,
               ),
              const SizedBox(width: 4),
              Image.asset(Assets.iconsClients,scale: 1.5,),
            ],
          ),
          const SizedBox(height: 28),

          // Reviews List
          _buildReview("3 August 2024", "One of the most effective products", 5),
          _buildReview("4 January 2024", "Amazing, highly recommended", 5),
          _buildReview("9 August 2023", "Very good", 3),
          const SizedBox(height: 12),

          // See All Button
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReview(String date, String comment, int stars) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    size: 16,
                    color: index < stars ? Colors.amber : Colors.grey.shade300,
                  );
                }),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              comment,
              style: const TextStyle(fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Image.asset(Assets.iconsClient),
        ],
      ),
    );
  }
}
