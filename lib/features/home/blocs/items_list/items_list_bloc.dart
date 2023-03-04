// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_list/core/error/failures.dart';
import 'package:shopping_list/features/home/data/items_list_repo.dart';
import 'package:shopping_list/features/home/model/items_list.dart';

part 'items_list_event.dart';
part 'items_list_state.dart';
part 'items_list_bloc.freezed.dart';

class ItemsListBloc extends Bloc<ItemsListEvent, ItemsListState> {
  final ItemsListRepo itemsListRepo;

  ItemsListBloc({required this.itemsListRepo})
      : super(const ItemsListState.init()) {
    on<ItemsListEvent>(_onGetItemsList);
  }

  Future<void> _onGetItemsList(
      ItemsListEvent event, Emitter<ItemsListState> emit) async {
    emit(const ItemsListState.loading());

    Either<Failure, List<ItemsList>> failOrData =
        await itemsListRepo.getItemsList();

    failOrData.fold((failure) {
      if (failure == FirebaseFailure) {
        emit(ItemsListState.error(failure));
      } else if (failure == CacheFailure) {
        emit(ItemsListState.error(failure));
      } else {
        emit(ItemsListState.error(Failure('inny blad')));
      }
    }, (itemsList) => emit(ItemsListState.loaded(itemsList)));
  }
}
