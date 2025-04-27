class TaskModel {
  final String task;
  final bool isDone;
  final DateTime currentDate;

  TaskModel({
    required this.task,
    this.isDone = false,
    DateTime? currentDate
  }) : currentDate = currentDate ?? DateTime.now();
}