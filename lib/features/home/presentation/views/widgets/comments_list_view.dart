import 'package:flutter/material.dart';

class CommentsListView extends StatelessWidget {
  final bool showAll;

  const CommentsListView({super.key, required this.showAll});

  @override
  Widget build(BuildContext context) {
    final int totalComments = 5;
    final int itemCount = showAll ? totalComments : 3;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const CommentsListViewItem();
      },
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: itemCount,
    );
  }
}

class CommentsListViewItem extends StatelessWidget {
  const CommentsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/client.png',
            height: 40,
            width: 40,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'One of the most effective products',
                        style: TextStyle(fontSize: 12),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      '22-11-2023',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: List.generate(5, (index) {
                    return const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.amber,
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
