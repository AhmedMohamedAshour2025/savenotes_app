import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({Key? key, this.onTap, required this.isLoading}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
        child:isLoading ? const CircularProgressIndicator(color: Colors.black,): const Text(
          'Add',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
