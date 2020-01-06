import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listify/src/blocs/TodoBloc.dart';
import 'package:listify/src/blocs/TodoState.dart';

import 'package:listify/src/models/Todo.dart';
import 'package:listify/src/screens/AddNewListItem.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  List<Todo> todoList = [
    Todo('List Item 1-1'),
    Todo('List Item 2-1'),
    Todo('List Item 3-1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listify'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (BuildContext context, TodoState state) => ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(todoList[index].todoName)
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Todo newTodo = await Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) => AddNewListItem()),
          );
          todoList.add(newTodo);
        }
      ),
    );
  }
}
