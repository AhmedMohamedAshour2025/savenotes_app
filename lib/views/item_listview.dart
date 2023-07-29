

import 'package:flutter/material.dart';

import 'widgets/notes_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.only(bottom: 16),
          child:  NotesItem(),
        );
      },
    );
  }
}