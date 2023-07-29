import 'package:finalapp/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style:const TextStyle(fontSize: 28),
        ),
       const Spacer(),
        CustomIconSearch(icon: icon,),
      ],
    );
  }
}
