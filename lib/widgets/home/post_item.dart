import 'package:flutter/material.dart';

import '../../core/app_assets.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          // contentPadding: EdgeInsets.zero,
          leading: const CircleAvatar(
            backgroundImage: AssetImage(AppAssets.modelOneImage),
          ),
          title: const Text('John Doe'),
          subtitle: const Text('8h ago'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ),
        const SizedBox(height: 16),
        Image.asset(AppAssets.routeImage),
        const SizedBox(height: 16),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
