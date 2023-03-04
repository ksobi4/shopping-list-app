import 'package:dartz/dartz.dart';
import 'package:shopping_list/core/error/failures.dart';
import 'package:shopping_list/features/home/data/items_list_local_repo.dart';
import 'package:shopping_list/features/home/data/items_list_remote_repo.dart';
import 'package:shopping_list/features/home/model/items_list.dart';

class ItemsListRepo {
  ItemsListRemoteRepo itemsListRemoteRepo;
  ItemsListLocalRepo itemsListLocalRepo;

  ItemsListRepo({
    required this.itemsListRemoteRepo,
    required this.itemsListLocalRepo,
  });

  Future<Either<Failure, List<ItemsList>>> getItemsList() async {
    try {
      Either<Failure, List<ItemsList>> data =
          await itemsListRemoteRepo.getItemsList();

      if (data.isRight()) {
        itemsListLocalRepo.cacheItemsList(data.getOrElse(() => []));
      }

      return data;
    } catch (e) {
      if (e == FirebaseFailure) {
        return Left(FirebaseFailure(e.toString()));
      } else if (e == CacheFailure) {
        return Left(CacheFailure(e.toString()));
      } else {
        return Left(Failure(e.toString()));
      }
    }
  }
}
