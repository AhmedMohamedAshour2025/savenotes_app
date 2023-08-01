import 'package:finalapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:finalapp/views/widgets/add_note_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(AddNoteState()),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true:false,
            child: Padding(
              padding:  EdgeInsets.only(left: 18,
              right: 18,
             bottom:  MediaQuery.of(context).viewInsets.bottom),
              child: const AddNoteForm(),
            ));
        },
        listener: (context, state) {
          
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            print('failure ${state.errMesaage}');
          }
        },
      ),
    );
  }
}
