import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_app/TaskData.dart';
import 'package:todoy_app/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        TaskData();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
