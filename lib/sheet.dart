import 'package:flutter/material.dart';


class MySheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                        onPressed: (){
                          Navigator.pop(context);
                          showModalBottomSheet(context: context,
                              isScrollControlled: true,
                              builder:(context)=>SingleChildScrollView(child:Container(
                                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                child: AddTask(),
                              )));

                        },
                          elevation: 0,
                          backgroundColor: Colors.lightBlue.shade100,
                          child: Icon(
                            Icons.note_add,
                            size: 35,
                            color: Colors.lightBlue,
                          )),
                    ),
                    Text('Notes')
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                          elevation: 0,
                          backgroundColor: Colors.lightBlue.shade100,
                          child: Icon(
                            Icons.add_to_photos,
                            size: 35,
                            color: Colors.lightBlue,
                          )),
                    ),
                    Text('Tasks')
                  ],
                )
              ],
            ),
            FloatingActionButton(
                child: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}


class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        padding: EdgeInsets.only(top: 15, left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30), topLeft: Radius.circular(30))),
              height: 48,
              child: FlatButton(
                splashColor: Colors.lightBlue,
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  },
              ),
            )
          ],
        ),
      ),
    );
  }
}

