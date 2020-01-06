import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoLoading extends TodoState {
  @override
  String toString() => 'TodoLoading Event';
}

class TodoLoaded extends TodoState {
  @override
  String toString() => 'TodoLoaded Event';
}

class TodoErrorLoading extends TodoState {
  @override
  String toString() => 'TodoErrorLoading Event';
}
