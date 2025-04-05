// import 'package:flutter/material.dart';
// import 'package:nurtura/core/theme/colors.dart';
// import 'package:nurtura/core/theme/styles.dart';
// import 'package:nurtura/features/camera/presentation/views/widgets/scanning_grid_view_item.dart';
// import 'package:nurtura/features/home/presentation/views/widgets/product_card.dart';
//
// class BottomSheetWidget extends StatelessWidget {
//   const BottomSheetWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 450,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(28), topRight: Radius.circular(28)),
//         color: ColorsManager.mainColor,
//         border: Border.all(
//           color: Colors.black12,
//           width: 1,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Text('Suggested Products',
//                 style: TextStyles.extraBold_16.copyWith(color: Colors.white)),
//             SizedBox(
//               height: 16,
//             ),
//             Expanded(
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: 6,
//                 clipBehavior: Clip.none,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: .62,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                 ),
//                 itemBuilder: (context, index) {
//                   return Center(child: ScanningGridViewItem());
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
