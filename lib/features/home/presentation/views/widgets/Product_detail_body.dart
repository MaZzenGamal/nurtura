import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/styles.dart';
import 'package:nurtura/features/home/presentation/views/widgets/comments_list_view.dart';
import 'package:nurtura/generated/assets.dart';

class ProductDetailBody extends StatefulWidget {
  const ProductDetailBody({super.key});

  @override
  State<ProductDetailBody> createState() => _ProductDetailBodyState();
}

class _ProductDetailBodyState extends State<ProductDetailBody> {
  bool showAllComments = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  "Product Details",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_forward_outlined, size: 25)),
              ],
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Assets.imagesTest,
                height: 350,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Medik8 Facial Cream',
              style: TextStyles.extraBold_16,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'This product has been viewed by more than 100 people.',
                  style: TextStyles.regular_11,
                ),
                const SizedBox(width: 4),
                Image.asset(Assets.iconsClients, scale: 1.5),
              ],
            ),
            const SizedBox(height: 18),
            // Comments List
            CommentsListView(showAll: showAllComments),
            const SizedBox(height: 12),
            Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    showAllComments = !showAllComments;
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      showAllComments ? "Show Less" : "See All",
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      showAllComments
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
