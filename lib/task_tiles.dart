import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
//   @override
//   State<TaskTiles> createState() => _TaskTilesState();
// }
//
// class _TaskTilesState extends State<TaskTiles> {
  // void checkBoxCallback(checkBoxState) {
  //   setState(() {
  //     isChecked = checkBoxState;
  //   });
  // }

  final bool isChecked;
  final String taskTitle;
  late final Function checkBoxCallback;

  TaskTiles({
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback as Function(bool?)?,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckBoxCallBack;
//   TaskCheckBox({
//     required this.checkBoxState,
//     required this.toggleCheckBoxCallBack,
//   });
// //   @override
// //   State<TaskCheckBox> createState() => _TaskCheckBoxState();
// // }
// //
// // class _TaskCheckBoxState extends State<TaskCheckBox> {
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
