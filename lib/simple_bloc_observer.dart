import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close = $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Create: ${bloc.toString()}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('Bloc: $bloc Error: $error StackTrace: $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('Bloc: $bloc Event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('Bloc: $bloc Transition: $transition');
  }
}
