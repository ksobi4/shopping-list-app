import 'package:go_router/go_router.dart';
import 'package:shopping_list/core/go%20router/router_consts.dart';
import 'package:shopping_list/features/home/presentation/items_list_page.dart';
import 'package:shopping_list/features/welcome/into_path_page.dart';
import 'package:shopping_list/features/welcome/select_lang_page.dart';

GoRouter getRouter(String initPage) {
  final router = GoRouter(
    initialLocation: initPage,
    routes: [
      GoRoute(
        path: HOME_R,
        builder: (context, state) => const ItemsListPage(),
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
