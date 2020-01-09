import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:listify/src/blocs/TodoEvents.dart';
import 'package:listify/src/blocs/TodoState.dart';
import 'package:listify/src/models/Todo.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  @override
  TodoState get initialState => TodoLoading();

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is LoadTodos) {
      yield TodoLoaded([
        Todo('List Item 1'),
        Todo('List Item 2'),
        Todo('List Item 3'),
      ]);
    } else if (event is AddTodo) {
      final List<Todo> updatedState = List.from((state as TodoLoaded).todos)..add(Todo(event.todoName));
      yield TodoLoaded(updatedState);
      print(state);
    }
  }
}
