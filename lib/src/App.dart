import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listify/src/blocs/TodoBloc.dart';

import 'package:listify/src/screens/HomeScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<TodoBloc>(create: (context) => TodoBloc(), child: HomeScreen()),
    );
  }
}