import 'package:get_it/get_it.dart';
import 'package:shopping_list/features/home/blocs/items_list/items_list_bloc.dart';
import 'package:shopping_list/features/home/data/items_list_local_repo.dart';
import 'package:shopping_list/features/home/data/items_list_remote_repo.dart';
import 'package:shopping_list/features/home/data/items_list_repo.dart';

final l = GetIt.instance;

Future<void> getItSetup() async {
  //Blocs
  l.registerFactory<ItemsListBloc>(() => ItemsListBloc(itemsListRepo: l()));

  //Repos
  l.registerLazySingleton<ItemsListRepo>(
      () => ItemsListRepo(itemsListLocalRepo: l(), itemsListRemoteRepo: l()));
  l.registerLazySingleton<ItemsListRemoteRepo>(() => ItemsListRemoteRepo());
  l.registerLazySingleton<ItemsListLocalRepo>(() => ItemsListLocalRepo());
}
