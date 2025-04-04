import 'package:flutter/material.dart';
import 'package:nurtura/core/theme/colors.dart';

class CategoryFilterScreen extends StatefulWidget {
  const CategoryFilterScreen({super.key});

  @override
  _CategoryFilterScreenState createState() => _CategoryFilterScreenState();
}

class _CategoryFilterScreenState extends State<CategoryFilterScreen> {
  List<String> categories = ["All", "Face", "Bath and Body", "Favorite products"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ChoiceChip(
                label: Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side:  BorderSide(
                    color: selectedIndex == index
                        ? ColorsManager.mainColorDark
                        : ColorsManager.mainColor,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                selected: selectedIndex == index,
                onSelected: (bool selected) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedColor: ColorsManager.mainColorDark,
                backgroundColor: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
