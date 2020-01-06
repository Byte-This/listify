import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:listify/src/blocs/TodoEvents.dart';
import 'package:listify/src/blocs/TodoState.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  @override
  TodoState get initialState => null;

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is AddTodo) {
      print(AddTodo().toString());
      yield TodoLoaded();
    }
  }

}
