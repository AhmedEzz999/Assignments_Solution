class Task {
  final String title;
  bool isDone;
  final DateTime createdAt;

  Task({required this.title}) : isDone = false, createdAt = DateTime.now();
}