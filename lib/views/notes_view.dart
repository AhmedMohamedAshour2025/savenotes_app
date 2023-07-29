import 'package:finalapp/views/widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

import 'item_listview.dart';
import 'widgets/add_note_bottomsheet.dart';

class NotesVeiw extends StatelessWidget {
  const NotesVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomAppBar(
              icon: Icons.search,
              title: 'Notes',
            ),
            Expanded(child: ItemListView()),
          ],
        ),
      ),
    );
  }
}
