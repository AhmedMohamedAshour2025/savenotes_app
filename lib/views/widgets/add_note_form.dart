

import 'package:finalapp/views/widgets/add_note_button.dart';
import 'package:finalapp/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 32),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
           const SizedBox(
              height: 18,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hint: 'Content',
              maxlines: 7,
            ),
           const SizedBox(
              height: 24,
            ),
            AddNoteButton(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}