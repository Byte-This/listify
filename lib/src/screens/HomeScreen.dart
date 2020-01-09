import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listify/src/blocs/TodoBloc.dart';
import 'package:listify/src/blocs/TodoState.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listify'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (BuildContext context, TodoState state) {
          if (state is TodoLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text(state.todos[index].todoName)
              )
            );
          } else {
            return CircularProgressIndicator();
          }
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/addtodo');
        }
      ),
    );
  }
}
