import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listify/src/blocs/CounterBloc.dart';
import 'package:listify/src/screens/CounterScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<CounterBloc>(
        builder: (context) => CounterBloc(),
        child: CounterScreen(),
      ),
    );
  }
}