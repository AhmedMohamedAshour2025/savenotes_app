import 'package:flutter/material.dart';

void main() {
  runApp(const Noteapp());
}
class Noteapp extends StatelessWidget {
  const Noteapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(appBar: AppBar(backgroundColor: Colors.white,),));
  }
}


