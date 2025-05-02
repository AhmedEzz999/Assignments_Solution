import 'package:flutter/material.dart';
import 'package:task_management/models/task_model.dart';
import 'package:task_management/widgets/home_view_empty.dart';
import 'package:task_management/widgets/text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Task> _tasks = [];
  final _controller = TextEditingController();

  void _addTask() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _tasks.add(Task(title: text));
      _controller.clear();
    });
  }

  void _toggleDone(int index) {
    setState(() {
      _tasks[index].isDone = !_tasks[index].isDone;
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FBF9),
      appBar: AppBar(
        backgroundColor: Color(0xff9ef2e3),
        title: Text(
          'My Tasks',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:
                _tasks.isEmpty
                    ? HomeViewEmpty()
                    : ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: _tasks.length,
                      itemBuilder: (context, index) {
                        final task = _tasks[index];
                        final date = task.createdAt;
                        final formattedDate =
                            '${date.day}/${date.month}/${date.year}';

                        return Card(
                          color: Color(0xFFEFF5F3),
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              leading: Checkbox(
                                activeColor: Color(0xFF006C5F),
                                value: task.isDone,
                                onChanged: (_) => _toggleDone(index),
                              ),
                              title: Text(
                                task.title,
                                style: TextStyle(
                                  fontWeight:
                                      task.isDone ? null : FontWeight.bold,
                                  color: task.isDone ? Color(0xFF838987) : null,
                                  decoration:
                                      task.isDone
                                          ? TextDecoration.lineThrough
                                          : null,
                                ),
                              ),
                              subtitle: Text('Created: $formattedDate'),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete_outline_outlined,
                                  color: Color(0xFFE77A6E),
                                ),
                                onPressed: () => _removeTask(index),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
          ),
          Textfield(controller: _controller, onAddTask: _addTask),
        ],
      ),
    );
  }
}
