import 'package:finalapp/views/edit_note_view.dart';
import 'package:flutter/material.dart';
import 'package:finalapp/models/note_model.dart';
class NotesItem extends StatelessWidget {
  const NotesItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
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
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title:  Padding(
              padding:const EdgeInsets.only(bottom: 20),
              child: Text(
                note.title,
                style:const TextStyle(color: Colors.black, fontSize: 26),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                note.subtitle,
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
              note.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 16),
            ),
          ),
        ]),
      ),
    );
  }
}
