import 'package:facebook_task_solution/core/app_assets.dart';
import 'package:facebook_task_solution/core/app_theme.dart';
import 'package:facebook_task_solution/widgets/home/app_bar_icon.dart';
import 'package:facebook_task_solution/widgets/home/post_item.dart';
import 'package:facebook_task_solution/widgets/home/stories_section.dart';
import 'package:facebook_task_solution/widgets/home/create_post_section.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: AppTheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          actions: const [
            AppBarIcon(iconPath: AppAssets.addIcon),
            AppBarIcon(iconPath: AppAssets.searchIcon),
            AppBarIcon(iconPath: AppAssets.messengerIcon),
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppTheme.primary,
            dividerHeight: 1,
            labelColor: AppTheme.primary,
            tabs: [
              Tab(
                icon: ImageIcon(
                  AssetImage(AppAssets.homeIcon),
                ),
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage(AppAssets.videoIcon),
                ),
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage(AppAssets.accountIcon),
                ),
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage(AppAssets.storeIcon),
                ),
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage(AppAssets.notificationIcon),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  CreatePostSection(),
                  Divider(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: size.height * 0.22,
                child: const StoriesSection(),
              ),
            ),
            const SliverToBoxAdapter(child: Divider()),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const PostItem(),
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
