import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listify/src/App.dart';
import 'package:listify/src/SimpleBlocDelegate.dart';
import 'package:listify/src/blocs/TodoBloc.dart';
import 'package:listify/src/blocs/TodoEvents.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(
    BlocProvider(
      create: (BuildContext context) => TodoBloc()..add(LoadTodos()),
      child: App()
    )
  );
}
