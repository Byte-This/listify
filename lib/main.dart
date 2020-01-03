import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:listify/src/App.dart';
import 'package:listify/src/SimpleBlocDelegate.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(App());
}
