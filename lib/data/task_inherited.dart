import 'package:flutter/material.dart';
import 'package:flutter_test1/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Tasks> tasksList = [
    Tasks('Ler', 'assets/images/livro.jpg', 5),
    Tasks('Meditar', 'assets/images/meditar.jpeg', 3)
  ];

  void newTask(String name, String foto, int difficulty) {
    tasksList.add(Tasks(name, foto, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'No taskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.tasksList.length != tasksList.length;
  }
}
