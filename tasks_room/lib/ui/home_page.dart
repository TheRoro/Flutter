import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../data/moor_database.dart';
import 'widget/new_task_input_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            'Tasks',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildTaskList(context)),
            NewTaskInput(),
          ],
        ));
  }

  StreamBuilder<List<Task>> _buildTaskList(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllTasks(),
      builder: (context, AsyncSnapshot<List<Task>> snapshot) {
        final tasks = snapshot.data ?? [];

        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (_, index) {
            final item = tasks[index];
            return _buildListItem(item, database);
          },
        );
      },
    );
  }

  Widget _buildListItem(Task item, AppDatabase database) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => database.deleteTask(item),
        )
      ],
      child: CheckboxListTile(
        title: Text(item.name),
        subtitle: Text(item.dueDate?.toString() ?? 'No date'),
        value: item.completed,
        onChanged: (newValue) {
          database.updateTask(item.copyWith(completed: newValue));
        },
      ),
    );
  }
}
