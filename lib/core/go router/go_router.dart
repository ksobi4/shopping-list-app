import 'package:go_router/go_router.dart';
import 'package:shopping_list/core/go%20router/consts.dart';
import 'package:shopping_list/features/welcome/into_path_page.dart';
import 'package:shopping_list/features/welcome/select_lang_page.dart';

import '../../features/home/presentation/home_page.dart';

GoRouter getRouter(String initPage) {
  final router = GoRouter(
    initialLocation: initPage,
    routes: [
      GoRoute(
        path: HOME_R,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: SELECT_LANG_R,
        builder: (context, state) => const SelectLangPage(),
      ),
      GoRoute(
        path: INTRODUCTION_PATH_R,
        builder: (context, state) => const IntoPathPage(),
      ),
    ],
  );

  return router;
}
