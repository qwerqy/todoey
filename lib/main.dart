import 'package:flutter/material.dart';
import 'package:todoey/models/store.dart';
import 'package:todoey/screens/TasksScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Store(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
