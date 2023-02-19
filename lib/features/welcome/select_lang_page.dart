import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:shopping_list/core/consts.dart';
import 'package:shopping_list/core/go%20router/consts.dart';
import 'package:shopping_list/utils/initial_page.dart';

class SelectLangPage extends StatefulWidget {
  const SelectLangPage({super.key});

  @override
  State<SelectLangPage> createState() => _SelectLangPageState();
}

class _SelectLangPageState extends State<SelectLangPage> {
  @override
  Widget build(BuildContext context) {
    print('local 1=  ' + context.locale.toString());

    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('select_lang'.tr(), style: const TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: InkWell(
                  onTap: () {
                    var hiveBox = Hive.box(Consts.HIVE_BOX);
                    hiveBox.put(HiveConsts.selectedLang, 'en');

                    context.setLocale(const Locale('en'));
                    context.go(getInitialPage());
                  },
                  child: Ink.image(
                      image: const AssetImage('assets/images/en.png')),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: InkWell(
                  onTap: () {
                    var hiveBox = Hive.box(Consts.HIVE_BOX);
                    hiveBox.put(HiveConsts.selectedLang, 'pl');

                    context.setLocale(const Locale('pl'));
                    context.go(getInitialPage());
                  },
                  child: Ink.image(
                      image: const AssetImage('assets/images/pl.png')),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100)
        ],
      ),
    ));
  }
}
