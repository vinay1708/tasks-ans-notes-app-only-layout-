import 'package:flutter/material.dart';
import 'sheet.dart';


class MyFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: Icon(
        Icons.add,
        color: Colors.lightBlueAccent,
        size: 35,
      ),
      onPressed: () {
        showModalBottomSheet(context: context, builder: (context) => MySheet());
      },
    );
  }
}