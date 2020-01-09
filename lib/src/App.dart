import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listify/src/blocs/TodoBloc.dart';
import 'package:listify/src/blocs/TodoEvents.dart';
import 'package:listify/src/screens/HomeScreen.dart';
import 'package:listify/src/screens/AddNewListItem.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) =>
          HomeScreen(),
        '/addtodo': (BuildContext context) => 
          AddNewListItem(
            onSave: (name) => BlocProvider.of<TodoBloc>(context)..add(AddTodo(todoName: name))
          ),
      },
    );
  }
}