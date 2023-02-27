import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/core/widgets/drawer_widget.dart';
import 'package:shopping_list/features/home/data/home_remote_repo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'.tr()),
      ),
      body: Column(
        children: [
          const Text('helo'),
          ElevatedButton(
              onPressed: (() async {
                HomeRemoteRepo repo = HomeRemoteRepo();
                repo.getCatalogs();
              }),
              child: Text('press')),
        ],
      ),
      drawer: const DrawerWidget(),
    );
  }
}