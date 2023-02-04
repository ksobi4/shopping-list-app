import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: Text('hello'.tr),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              var locale = Locale('en');
              Get.updateLocale(locale);
            },
            child: Text('English'),
          ),
          ElevatedButton(
            onPressed: () {
              var locale = Locale('pl');
              Get.updateLocale(locale);
            },
            child: Text('Polish'),
          ),
        ],
      ),
    );
    ;
  }
}
