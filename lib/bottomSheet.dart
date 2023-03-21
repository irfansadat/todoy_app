import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTasksScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            20.0,
          ),
          topLeft: Radius.circular(
            20.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlue,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newValue) {
              newTaskTitle = newValue;
            },
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: Text(
                'Add Task',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
            ),
          )
        ],
      ),
    );
  }
}
