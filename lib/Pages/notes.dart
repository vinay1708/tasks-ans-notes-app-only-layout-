import 'package:flutter/material.dart';


class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
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
              child: Text(
                'Notes',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.white
                ),
              ),
            ),
            Divider(thickness: 2.2,
                color: Color(0xFF3E3E3E))
          ],
        ),
      ),
    );
  }
}