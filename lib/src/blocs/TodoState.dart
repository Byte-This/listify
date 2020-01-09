import 'package:equatable/equatable.dart';
import 'package:listify/src/models/Todo.dart';
import 'package:meta/meta.dart';

@immutable
class TodoState extends Equatable {
  const TodoState();

  @override
  List<Todo> get props => [];
}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;

  const TodoLoaded([this.todos = const []]);

  @override
  List<Todo> get props => todos;

  @override
  String toString() => 'TodoLoaded State';
}

class TodoErrorLoading extends TodoState {
  @override
  String toString() => 'TodoErrorLoading State';
}
