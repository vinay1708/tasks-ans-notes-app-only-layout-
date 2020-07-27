import 'package:flutter/material.dart';


class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212020),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 30),
              child: Text('Tasks',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.white
                ),
              ),
            ),
            Divider(color: Color(0xFF3E3E3E),
              thickness: 2.2,
            )
          ],
        ),
      ),
    );
  }
}
