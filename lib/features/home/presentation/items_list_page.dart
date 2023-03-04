import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list/core/widgets/drawer_widget.dart';
import 'package:shopping_list/features/home/blocs/items_list/items_list_bloc.dart';
import 'package:shopping_list/utils/get_it.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('hello'.tr()),
      ),
      body: Column(
        children: [
          BlocProvider<ItemsListBloc>.value(
              value: l<ItemsListBloc>(),
              child: BlocBuilder<ItemsListBloc, ItemsListState>(
                builder: (context, state) {
                  return Text('');
                },
              ))
        ],
      ),
    );
  }
}

class ItemsListPage extends StatelessWidget {
  const ItemsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
