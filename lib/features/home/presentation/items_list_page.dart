import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list/core/widgets/drawer_widget.dart';
import 'package:shopping_list/features/home/blocs/items_list/items_list_bloc.dart';
import 'package:shopping_list/utils/database.dart';
import 'package:shopping_list/utils/get_it.dart';

class ItemsListPage extends StatelessWidget {
  const ItemsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('hello'.tr()),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                await addFirstItemsListToDB();
              },
              child: const Text('test btn')),
          BlocProvider<ItemsListBloc>.value(
              value: l<ItemsListBloc>()
                ..add(const ItemsListEvent.getItemsList()),
              child: BlocBuilder<ItemsListBloc, ItemsListState>(
                builder: (context, state) {
                  if (state is ItemsListStateInit) {
                    return Text('init');
                  } else if (state is ItemsListStateLoading) {
                    return Text('loading');
                  } else if (state is ItemsListStateError) {
                    return Text('err = ${state.failure.message}');
                  } else if (state is ItemsListStateLoaded) {
                    return Text(state.list.isEmpty
                        ? 'lista pusta'
                        : state.list[0].name);
                  }
                  return Text('chuj wie');
                },
              ))
        ],
      ),
    );
  }
}
