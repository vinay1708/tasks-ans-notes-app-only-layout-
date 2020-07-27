import 'package:flutter/material.dart';
import 'package:new_app/myfab.dart';
import 'notes.dart';
import 'tasks.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    Notes(),
    Tasks(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget CurrentScreen = Tasks();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: CurrentScreen,
        bucket: bucket,
      ),
      backgroundColor: Color(0xFF212020),
      floatingActionButton: MyFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF3E3E3E),
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      CurrentScreen = Tasks();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.format_list_bulleted,
                        color:
                            currentTab == 0 ? Colors.lightBlue : Colors.white,
                      ),
                      Text(
                        'Tasks',
                        style: TextStyle(
                          color:
                              currentTab == 0 ? Colors.lightBlue : Colors.white,
                        ),
                      )
                    ],
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      CurrentScreen = Notes();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.note_add,
                          color: currentTab == 1
                              ? Colors.lightBlue
                              : Colors.white),
                      Text(
                        'Notes',
                        style: TextStyle(
                            color: currentTab == 1
                                ? Colors.lightBlue
                                : Colors.white),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
