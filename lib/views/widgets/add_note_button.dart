import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
        child: const Text(
          'Add',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
