import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_list/core/widgets/drawer_widget.dart';

import 'utils/logger.dart';

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
          ElevatedButton(onPressed: (() async {}), child: Text('press')),
        ],
      ),
      drawer: const DrawerWidget(),
    );
    ;
  }
}
