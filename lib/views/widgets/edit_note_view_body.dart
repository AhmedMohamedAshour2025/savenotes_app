import 'package:finalapp/views/widgets/custom_appbar.dart';
import 'package:finalapp/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edite Note',
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxlines: 6,
          )
        ],
      ),
    );
  }
}
