import 'package:flutter/material.dart';
import 'package:nurtura/features/home/presentation/views/widgets/category_filter_screen.dart';
import 'package:nurtura/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:nurtura/features/home/presentation/views/widgets/product_card.dart';
import 'package:nurtura/features/home/presentation/views/widgets/products_grid_view.dart';
import 'package:nurtura/features/home/presentation/views/widgets/products_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSearchBar(),
          CategoryFilterScreen(),
          SizedBox(
            height: 18,
          ),
          ProductsView(),
          ProductsGridView(),
        ],
      ),
    );
  }
}
