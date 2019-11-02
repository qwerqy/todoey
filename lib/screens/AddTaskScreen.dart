import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/store.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String value;

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        return Container(
          color: Color(0xff757575),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
                  ),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightBlueAccent, width: 2))),
                    onChanged: (input) {
                      value = input;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      store.addTask(value);
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
