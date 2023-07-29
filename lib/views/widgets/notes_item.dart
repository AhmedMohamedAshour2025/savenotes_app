import 'package:finalapp/views/edit_note_view.dart';
import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const EditNoteView();
          },
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                'build your career with tharwat samy',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 20),
              ),
            ),
            trailing: const Icon(
              Icons.delete,
              color: Colors.black,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Text(
              'May 21 2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 16),
            ),
          ),
        ]),
      ),
    );
  }
}
