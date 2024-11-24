import 'package:facebook_task_solution/widgets/home/create_story_item.dart';
import 'package:facebook_task_solution/widgets/home/story_item.dart';
import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.separated(
      itemCount: 20,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) {
        if (index == 0) {
          return SizedBox(
            width: size.width * 0.30,
            child: const CreateStoryItem(),
          );
        }
        return SizedBox(
          width: size.width * 0.30,
          child: const StoryItem(),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 16);
      },
    );
  }
}
