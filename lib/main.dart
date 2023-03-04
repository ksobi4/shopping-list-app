import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shopping_list/utils/database.dart';
import 'package:shopping_list/utils/local_storage.dart';

import 'core/go router/go_router.dart';
import 'core/themes.dart';
import 'utils/initial_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  //hive
  await initLocalStorage();

  //firebase
  await initFirebase();

  String initialPage = getInitialPage();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [
        Locale('en'),
        Locale('pl'),
      ],
      saveLocale: true,
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      useOnlyLangCode: true,
      child: App(path: initialPage),
    ),
  );
}

// ignore: must_be_immutable
class App extends StatelessWidget {
  String path;
  App({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: theme1,
      routerConfig: getRouter(path),
    );
  }
}
