import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_app/TaskData.dart';
import 'package:todoy_app/task_tiles.dart';

class TasksList extends StatelessWidget {
//   @override
//   State<TasksList> createState() => _TasksListState();
// }
//
// class _TasksListState extends State<TasksList> {

  // final List<Task> task;
  // TasksList({required this.task});

  // List<Task> tasks = [
  //   Task(name: 'by milk'),
  //   Task(name: 'by egg'),
  //   Task(name: 'by shorts'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTiles(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (index) {
                //   setState(() {
                //     Widget.tasks[index].toggleDone();
                // //   });
                // });
              },
            );

            //   ListView(
            //   children: [
            //     TaskTiles(
            //       taskTitle: tasks[0].name,
            //       isChecked: tasks[0].isDone,
            //       checkBoxCallback: (index) {
            //         setState(() {
            //           tasks[0].toggleDone();
            //         });
            //       },
            //     ),
            //     TaskTiles(
            //       taskTitle: tasks[1].name,
            //       isChecked: tasks[1].isDone,
            //       checkBoxCallback: (index) {
            //         setState(() {
            //           tasks[1].toggleDone();
            //         });
            //       },
            //     ),
            //     TaskTiles(
            //       taskTitle: tasks[2].name,
            //       isChecked: tasks[2].isDone,
            //       checkBoxCallback: (index) {
            //         setState(() {
            //           tasks[2].toggleDone();
            //         });
            //       },
            //     ),
            //   ],
            // );
          },
          itemCount: taskData.tasks.length);
    });
  }
}
