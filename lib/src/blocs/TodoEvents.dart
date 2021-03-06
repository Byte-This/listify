import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class LoadTodos extends TodoEvent {}

class AddTodo extends TodoEvent {
  final String todoName;

  const AddTodo({
    this.todoName,
  });

  @override
  List<Object> get props => [todoName];

  @override
  String toString() => 'AddTodo event';
}